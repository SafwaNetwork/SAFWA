# SAFWA Token Technical Specifications

## 1. Overview

SAFWA (Token Symbol: **SFW§**) is an ERC-20 compliant token built on the **Polygon PoS** blockchain. It utilizes a **Square Root Bonding Curve** mechanism for autonomous pricing and liquidity, fully backed by a **USDC** reserve.

## 2. Token Details

| Parameter | Value | Description |
| :--- | :--- | :--- |
| **Name** | `SAFWA` | The human-readable name of the token. |
| **Symbol** | `SFW§` | The ticker symbol. |
| **Decimals** | `18` | Standard Ethereum-like decimal precision. |
| **Network** | Polygon PoS | Implementation chain. |
| **Payment Currency** | USDC | Native Polygon USDC (6 Decimals). |

## 3. Bonding Curve Algorithm

The token price is determined by a continuous function of the total supply.

### 3.1 Price Formula

The spot price $P(x)$ for the $x$-th token is defined as:

$$ P(x) = 0.005 \cdot \sqrt{x} + 1 $$

Where:

- $P(x)$ is the price in USD.
- $x$ is the circulating supply of SAFWA (in whole tokens).
- **Slope ($m$):** 0.005
- **Base Price ($b$):** 1.00 USD

### 3.2 Reserve (Integral) Calculation

The contract holds the area under the price curve as a reserve. The Total Reserve $R(S)$ for a supply $S$ (in Wei) is calculated via integration:

$$ R(S) = \int_0^S P(x) \,dx = \frac{2}{3} m S^{1.5} + bS $$

#### Solidity Implementation

To maintain precision, the contract performs calculations using 18-decimal fixed-point arithmetic (WAD) and raw integer math before scaling to USDC.

- **Formula:** `Reserve = (4 * Supply^1.5) / 3e12 + Supply`
- **Scaling:** The result represents the reserve in USD (18 decimals). It is converted to USDC (6 decimals) only during transfer commands.
- **Rounding:**
  - **Buy Cost:** Rounded **UP** (Ceiling) to ensure the contract is never underpaid.
  - **Sell Refund:** Rounded **DOWN** (Floor) to ensure the contract never overpays.

## 4. Taxes & Fees

A sustainability tax is applied **only on Sells**.

- **Tax Rate:** 0.1% (10 basis points).
- **Tax Cap:** Maximum 100 USDC per transaction.
- **Application:** Deducted from the User's USDC refund.
- **Recipient:** A hardcoded immutable `taxWallet`.

## 5. Security & Safety Features

### 5.1 Slippage Protection

- **Buy:** Users must specify `maxCost`. Transaction reverts if `calculatedCost > maxCost`.
- **Sell:** Users must specify `minRefund`. Transaction reverts if `netRefund < minRefund`.

### 5.2 Rounding Direction

- **Buy Operations:** Strictly round up calculations to favor the protocol reserve (prevents dust draining).
- **Sell Operations:** Strictly round down refund calculations.

### 5.3 Immutability

- The bonding curve parameters (`m`, `b`) are constant and cannot be changed.
- The `taxWallet` is immutable.
- Usage of `Ownable2Step` for the `rescueTokens` function.

### 5.4 Protected Assets

- `rescueTokens` allows the owner to recover accidentally sent tokens (e.g., random ERC20s) but **strictly forbids** withdrawing:
  - The Reserve Asset (USDC).
  - The SAFWA Token itself.

## 6. Contract Methods

### User Actions

- `buy(uint256 tokenAmount, uint256 maxCost)`: Mint new tokens by paying USDC.
- `sell(uint256 tokenAmount, uint256 minRefund)`: Burn tokens to redeem USDC.

### Views

- `calculateReserve(uint256 supply)`: Returns the theoretical reserve USD value (18 decimals) for a given supply.
- `getBuyCost(uint256 tokenAmount)`: Returns the USDC cost (6 decimals) to buy a specific amount.
- `getSellRefund(uint256 tokenAmount)`: Returns the USDC refund (6 decimals) for selling a specific amount.

### Admin

- `rescueTokens(address token)`: Recover stuck tokens (excluding USDC and SAFWA).
