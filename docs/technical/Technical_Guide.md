# SAFWA (SFW§) Documentation

Welcome to the official documentation for **SAFWA**, the Square Root Bonding Curve Token on Polygon.

## Table of Contents

1. [Introduction](#introduction)
2. [Getting Started](#getting-started)
3. [Smart Contract Architecture](#smart-contract-architecture)
4. [Integration Guide](#integration-guide)
5. [Math & Formulas](#math--formulas)
6. [Security](#security)

---

## Introduction

SAFWA (SFW§) is a decentralized ERC20 token that uses an automated market maker (AMM) model known as a **Bonding Curve**. Unlike traditional tokens with fixed supplies or manual liquidity pools (like Uniswap), SAFWA's price and supply are valid at any given moment based on a mathematical formula.

**Key Concept:** Use USDC to mint SFW§. Burn SFW§ to redeem USDC. The contract is the counterparty to every trade.

---

## Getting Started

### For Users

To interact with SAFWA, you need:

1. **A Web3 Wallet** (e.g., MetaMask, Rabby).
2. **Network:** Polygon PoS.
3. **Balance:** USDC (Native Polygon USDC) for buying, and MATIC for gas fees.

### For Developers

* **Repo:** [https://github.com/SafwaNetwork/SAFWA](https://github.com/SafwaNetwork/SAFWA)
* **License:** MIT
* **Solidity Version:** `^0.8.33`

---

## Smart Contract Architecture

The system consists of a single, immutable smart contract.

### Contract Addresses

| Network | Contract | Address |
| :--- | :--- | :--- |
| **Polygon Mainnet** | SAFWA | `0x98376d6dcc148FcdBdbaa4E895ee6f2D3FE52df4` |
| **Polygon Mainnet** | USDC | `0x3c499c542cEF5E3811e1192ce70d8cC03d5c3359` |

### Roles

* **Owner:** Has limited power. Can only call `rescueTokens()` for non-protected assets. Cannot upgrade contract, cannot mint tokens, cannot pause.
* **Tax Wallet:** Receives the 0.1% sell tax (capped at 100 USDC).

---

## Integration Guide

### 1. Buying SAFWA

Buying mints new tokens. You must approve the SAFWA contract to spend your USDC first.

```solidity
// 1. Approve USDC
IERC20(usdc).approve(safwaAddress, usdcAmount);

// 2. Buy
// tokenAmount: Amount of SFW§ to buy (18 decimals)
// maxCost: Max USDC you are willing to pay (6 decimals)
safwa.buy(tokenAmount, maxCost);
```

### 2. Selling SAFWA

Selling burns tokens and returns USDC to your wallet.

```solidity
// 1. Approve SAFWA (if selling via another contract) or just call sell
// tokenAmount: Amount of SFW§ to sell (18 decimals)
// minRefund: Minimum USDC you expect to receive (6 decimals)
safwa.sell(tokenAmount, minRefund);
```

### 3. Reading Price data

You can query the contract to estimate costs before trading.

```solidity
// Get USDC cost for X tokens
uint256 cost = safwa.getBuyCost(amount);

// Get USDC refund for X tokens
uint256 refund = safwa.getSellRefund(amount);
```

---

## Math & Formulas

### Price Function

The instant spot price follows a square root curve:
$$ P(x) = 0.005\sqrt{x} + 1 $$

### Reserves

The reserve is the integral of the price function. It ensures that every single token in existence is backed by the USDC in the contract.

* **Reserve Ratio:** 100% (The contract *always* has enough USDC to buy back tokens).

### Tax Logic

* **Buy:** 0% Tax.
* **Sell:** 0.1% Tax on the underlying USDC refund.
* **Cap:** The tax never exceeds 100 USDC per transaction, favoring large "Whale" exits without excessive penalties.

---

## Security

* **ReentrancyGuard:** All state-changing external functions are protected.
* **Rounding:**
  * Buys round **UP** (You pay slightly more dust).
  * Sells round **DOWN** (You get slightly less dust).
  * *Result:* The contract accumulates extra dust over time, making it effectively over-collateralized.
* **Asset Protection:** The `rescueTokens` function prevents the admin from stealing the Reserves (USDC) or the Token Supply.
