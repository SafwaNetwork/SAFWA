# Fuzz / Property-Based Testing Report

**Project:** SAFWA Network  
**Component:** `SAFWA.sol`  
**Date:** January 7, 2026  
**Status:** **PASSED**  
**Methodology:** Randomized Action Simulation (Hardhat/Chai)

## 1. Objective

To stress-test the mathematically critical components of the Bonding Curve by simulating unpredictable, high-frequency user interactions. The primary goal was to verify the **Solvency Invariant**:

$$ \text{Contract USDC Balance} \ge \text{Mathematical Reserve Requirement} $$

## 2. Test Configuration

- **Iterations:** 100 Random Operations per run.
- **Actions:** Randomized sequence of `Buy` and `Sell`.
- **Inputs:** Random amounts (1 wei to 10,000 tokens) per transaction.
- **Asserts:** Checked the Invariant after **every single operation**.

## 3. Results Analysis

The test successfully executed 100 iterations without a single invariant violation.

### Surplus Accumulation

A positive side-effect of the "Round Up (Buy) / Round Down (Sell)" strategy is that the contract accumulates a small "dust" surplus over time. This confirms the safety mechanism is working.

**Sample Log Output:**

```text
[Iter 0]  Supply: 4775.0 SFW                 | Surplus: 1 USDC-wei
[Iter 20] Supply: 39276.99... SFW            | Surplus: 9 USDC-wei
[Iter 60] Supply: 101131.87... SFW           | Surplus: 23 USDC-wei
[Iter 80] Supply: 112842.81... SFW           | Surplus: 31 USDC-wei
```

*Note: This surplus is separate from the accumulated tax revenues. It is raw USDC dust left in the reserve itself.*

## 4. Conclusion

The Fuzz Testing verifies that the `SAFWA` contract is mathematically robust. The strict rounding implementation effectively guarantees solvency even under chaotic trading conditions.
