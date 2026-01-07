// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * @title SAFWA (SFW§)
 * @notice Bonding Curve Token with Square Root Pricing Algorithm on Polygon.
 * @author Safwa Team
 * @dev 
 * - Standard: ERC20 (18 Decimals).
 * - Payment: Native USDC (6 Decimals) on Polygon.
 * - Pricing: Square Root Curve P(x) = 0.005 * sqrt(x) + 1.
 * - Reserve: Area under curve (Integral) stored in USDC 1:1.
 * - Tax: 0.1% on Sell Refund (Max 100 USDC CAP).
 * - Safety: Round UP buy costs, Round DOWN sell refunds.
 * - Architecture: Immutable logic. Ownable2Step for rescue control.
 * - address: 0x98376d6dcc148FcdBdbaa4E895ee6f2D3FE52df4
 */
contract SAFWA is ERC20, Ownable2Step, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using Math for uint256;

    // =============================================================
    //                           CONSTANTS
    // =============================================================

    /// @dev Scaling factor between SAFWA (18 decimals) and USDC (6 decimals)
    uint256 private constant _USDC_SCALE = 1e12;

    /// @dev Curve Slope (m) factor in formula denominator
    /// Formula term: (2/3) * m * S^1.5
    /// Denominator: 1.2 * 1e12 = 1,200,000,000,000
    uint256 private constant _CURVE_DENOMINATOR = 12e11; 

    /// @dev Tax Rate: 0.1% (1000 basis points denominator)
    uint256 private constant _TAX_DIVISOR = 1000;

    /// @dev Max Tax Cap: 100 USDC (6 decimals)
    uint256 private constant _MAX_TAX_USDC = 100e6;

    // =============================================================
    //                        STATE VARIABLES
    // =============================================================

    /// @notice Native USDC Address on Polygon PoS (6 Decimals).
    IERC20 public immutable usdc;

    /// @notice Immutable Tax Receiver Wallet
    address public immutable taxWallet;

    // =============================================================
    //                            ERRORS
    // =============================================================

    error InsufficientPayment();
    error TransferFailed();
    error ZeroAmount();
    error SlippageExceeded();
    error RefundTooSmall();
    error ProtectedAsset();
    error InvalidAddress();

    // =============================================================
    //                            EVENTS
    // =============================================================

    event TokensBought(address indexed buyer, uint256 amountBought, uint256 costUSDC, uint256 fee);
    event TokensSold(address indexed seller, uint256 amountSold, uint256 refundUSDC, uint256 taxPaid);
    event TokensRescued(address indexed token, address indexed to, uint256 amount);

    // =============================================================
    //                         CONSTRUCTOR
    // =============================================================

    /**
     * @notice Initialize the Bonding Curve Token.
     * @param _usdcAddress The address of the USDC token.
     * @param _taxWallet The address to receive tax revenue.
     */
    constructor(address _usdcAddress, address _taxWallet) ERC20("SAFWA", unicode"SFW§") Ownable(msg.sender) payable {
        if (_usdcAddress == address(0)) revert InvalidAddress();
        if (_taxWallet == address(0)) revert InvalidAddress();
        
        usdc = IERC20(_usdcAddress);
        taxWallet = _taxWallet;
    }

    // =============================================================
    //                      BONDING CURVE MATH
    // =============================================================

    /**
     * @notice Calculates the math integral (Reserve) for a given supply.
     * @dev Formula: Reserve(S) = (2/3) * m * S^1.5 + b * S
     * @param supply The token supply (Wei).
     * @return The total reserve value in USD (18 decimals).
     */
    function calculateReserve(uint256 supply) public pure returns (uint256) {
        if (supply == 0) return 0;

        // Term 1: Slope Integral (S * sqrt(S))
        uint256 root = supply.sqrt(); 
        uint256 s_pow_1_5 = supply * root; 
        
        // (4 * S^1.5) / 3e12
        uint256 term1 = s_pow_1_5.mulDiv(4, _CURVE_DENOMINATOR);

        // Term 2: Base Linear Integral (b * S, where b=1)
        uint256 term2 = supply;

        return term1 + term2;
    }

    /**
     * @notice View function to get the USDC cost for a buy amount.
     * @dev ROUNDS UP via mulDiv(..., Ceil).
     * @param tokenAmount The amount of SAFWA tokens to buy.
     * @return The cost in USDC (6 decimals).
     */
    function getBuyCost(uint256 tokenAmount) public view returns (uint256) {
        uint256 supply = totalSupply();
        uint256 reserveBefore = calculateReserve(supply);
        uint256 reserveAfter = calculateReserve(supply + tokenAmount);
        
        uint256 costWad = reserveAfter - reserveBefore;
        
        // ROUND UP
        return costWad.mulDiv(1, _USDC_SCALE, Math.Rounding.Ceil);
    }

    /**
     * @notice View function to get the USDC refund for a sell amount (before tax).
     * @dev ROUNDS DOWN via mulDiv.
     * @param tokenAmount The amount of SAFWA tokens to sell.
     * @return The refund in USDC (6 decimals).
     */
    function getSellRefund(uint256 tokenAmount) public view returns (uint256) {
        uint256 supply = totalSupply();
        if (supply < tokenAmount) return 0;
        
        uint256 reserveBefore = calculateReserve(supply);
        uint256 reserveAfter = calculateReserve(supply - tokenAmount);
        
        uint256 refundWad = reserveBefore - reserveAfter;
        
        // ROUND DOWN
        return refundWad.mulDiv(1, _USDC_SCALE);
    }

    // =============================================================
    //                       USER ACTIONS
    // =============================================================

    /**
     * @notice Buy SAFWA tokens with USDC.
     * @param tokenAmount The amount of SAFWA to mint (18 dec).
     * @param maxCost The maximum USDC willing to pay.
     */
    function buy(uint256 tokenAmount, uint256 maxCost) external nonReentrant {
        if (tokenAmount == 0) revert ZeroAmount();

        uint256 costUSDC = getBuyCost(tokenAmount);
        
        if (costUSDC == 0) revert InsufficientPayment();
        if (costUSDC > maxCost) revert SlippageExceeded();

        // Fix Issue 12: Use immutable variable directly (Cheaper than caching)
        // Transfer USDC from User to Contract
        usdc.safeTransferFrom(msg.sender, address(this), costUSDC);

        _mint(msg.sender, tokenAmount);

        emit TokensBought(msg.sender, tokenAmount, costUSDC, 0);
    }

    /**
     * @notice Sell SAFWA tokens for USDC.
     * @param tokenAmount The amount of SAFWA to burn (18 dec).
     * @param minRefund The minimum USDC expected to receive.
     */
    function sell(uint256 tokenAmount, uint256 minRefund) external nonReentrant {
        if (tokenAmount == 0) revert ZeroAmount();
        if (balanceOf(msg.sender) < tokenAmount) revert TransferFailed();

        uint256 refundUSDC = getSellRefund(tokenAmount);
        if (refundUSDC == 0) revert RefundTooSmall();

        // Tax = refund * 1 / 1000
        uint256 taxUSDC = refundUSDC.mulDiv(1, _TAX_DIVISOR);
        
        if (taxUSDC > _MAX_TAX_USDC) {
            taxUSDC = _MAX_TAX_USDC;
        }

        uint256 netRefund = refundUSDC - taxUSDC;

        if (netRefund < minRefund) revert SlippageExceeded();

        _burn(msg.sender, tokenAmount);

        // Fix Issue 12: Use immutable variables directly
        if (taxUSDC != 0) {
            usdc.safeTransfer(taxWallet, taxUSDC);
        }

        if (netRefund != 0) {
            usdc.safeTransfer(msg.sender, netRefund);
        }

        emit TokensSold(msg.sender, tokenAmount, refundUSDC, taxUSDC);
    }

    // =============================================================
    //                       ADMIN ACTIONS
    // =============================================================

    /**
     * @notice Rescue accidental tokens.
     * @param token The token address to rescue.
     */
    function rescueTokens(address token) external payable onlyOwner {
        // Fix Issue 10: Cache address(this) since we use it twice here
        address _self = address(this);

        // Handle Native ETH/MATIC Rescue
        if (token == address(0)) {
            uint256 nativeBalance = _self.balance;
            if (nativeBalance != 0) {
                (bool success, ) = payable(msg.sender).call{value: nativeBalance}("");
                if (!success) revert TransferFailed();
                emit TokensRescued(address(0), msg.sender, nativeBalance);
            }
            return;
        }

        if (token == address(usdc)) revert ProtectedAsset();
        if (token == _self) revert ProtectedAsset();

        uint256 balance = IERC20(token).balanceOf(_self);
        
        if (balance != 0) {
            IERC20(token).safeTransfer(msg.sender, balance);
            emit TokensRescued(token, msg.sender, balance);
        }
    }
}
