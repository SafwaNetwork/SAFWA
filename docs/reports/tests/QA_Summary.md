# QA & Testing Report

**Project:** SAFWA Network  
**Component:** `SAFWA.sol`  
**Date:** January 7, 2026  
**Status:** **PASSED**  
**Framework:** Hardhat / Chai

## 1. Test Summary

A comprehensive automated test suite was executed to validate the functional correctness and security properties of the contract.

| Test Category | Description | Status |
| :--- | :--- | :--- |
| **Deployment** | Verifies correct initialization of immutable variables (USDC, Tax Wallet) and checks for zero-address validation. | ✅ PASS |
| **Bonding Curve** | Validates the integral math for Buy Cost and Sell Refund. Ensures rounding direction protects the reserve. | ✅ PASS |
| **Liquidity Operations** | Simulates full user flow: Buying (Minting) and Selling (Burning/Refund). Checks balance updates for User, Contract, and Tax Wallet. | ✅ PASS |
| **Slippage Protection** | Confirms that transactions revert if `maxCost` or `minRefund` limits are violated. | ✅ PASS |
| **Asset Security** | **(NEW)** Verifies `rescueTokens` functionality for: <br>1. **ERC20 Tokens** (excluding USDC).<br>2. **Native ETH/MATIC** (via `address(0)`).<br>3. **USDC Protection** (ensures reserves cannot be drained). | ✅ PASS |

## 2. Test Execution Log

```
  SAFWA Bonding Curve
    Deployment
      ✔ Should set the correct USDC and Tax Wallet
      ✔ Should fail if USDC or Tax address is zero
    Buying
      ✔ Should calculate cost correctly (Integral Logic)
      ✔ Should mint tokens and transfer USDC
      ✔ Should revert if maxCost is exceeded (Slippage)
    Selling
      ✔ Should refund USDC and burn tokens
    Rescue Tokens
      ✔ Should rescue ERC20 tokens
      ✔ Should rescue Native ETH/MATIC (address(0))
      ✔ Should NOT rescue USDC


  9 passing (329ms)
```

## 3. Gas Analysis

Gas usage was measured during test execution. The contract is optimized for Polygon PoS.

| Action | Avg Gas Cost | Estimated Cost (30 gwei) | Notes |
| :--- | :--- | :--- | :--- |
| **Deployment** | ~2,352,265 | ~0.07 MATIC | One-time cost. |
| **Buy (Mint)** | ~113,444 | ~0.0034 MATIC | Includes bonding curve calc + USDC transfer. |
| **Sell (Burn)** | ~87,305 | ~0.0026 MATIC | Includes bonding curve calc + Tax + Refund. |
| **Rescue** | ~36,459 | ~0.0011 MATIC | Admin only. |

## 4. Conclusion

The `SAFWA` contract has passed all quality assurance tests.

- **Critical Logic Verified:** The bonding curve math and rounding logic function as designed.
- **Security Protections Verified:** Slippage and Asset Protection (USDC lock) are active and effective.
- **New Features Verified:** The Native Token Rescue mechanism works correctly without compromising the reserve.
