# RISK DISCLOSURE STATEMENT

- **Last Updated:** January 7, 2026
- **Version:** 0.1.0
- **Jurisdiction:** Saint Vincent and the Grenadines
- **Administrative Status:** **OWNERSHIP RENOUNCED / NULL AUTHORITY**
- **Smart Contract Address:** `[INSERT DEPLOYED CONTRACT ADDRESS HERE]`

**IMPORTANT NOTICE:**
Participation in the Safwa Decentralized Network involves a **SIGNIFICANT DEGREE OF RISK**. Before interacting with the Smart Contract, connecting your wallet, or exchanging any funds for SAFWA tokens, you should carefully consider the risks described below.
**IF YOU ARE UNCOMFORTABLE WITH THE POTENTIAL LOSS OF YOUR ENTIRE CONTRIBUTION, DO NOT PARTICIPATE.**

---

## ARTICLE I: GENERAL FINANCIAL RISKS

### 1.1. No Profit Guarantee

The Safwa Network is a decentralized software utility.

- **Not an Investment:** The acquisition of SAFWA tokens is **NOT** an investment, a security, a deposit, or a savings account. It is a purchase of a digital utility token governed by immutable code.
- **No ROI:** There is absolutely no guarantee that the value of SAFWA will increase. You acknowledge that the price may remain stagnant or decrease significantly immediately after your purchase.

### 1.2. Risk of Total Loss

You acknowledge and accept that you may lose **100% of the funds** (USDC) you contribute to the Protocol.

- **Market Dynamics:** If market demand evaporates, liquidity may become inaccessible or the token price may drop to near zero.
- **No Insurance:** Your funds are not insured by the FDIC, SIPC, or any government agency or private insurance entity.

### 1.3. Volatility and Price Fluctuations

The price of SAFWA is determined by an automated Bonding Curve algorithm ().

- **Algorithmic Sensitivity:** Unlike traditional markets, the price reacts mathematically to every single buy and sell transaction. A series of large sell orders can cause a rapid, cascading price crash ("Slippage Cascade").
- **No Circuit Breakers:** There are no "trading halts" or "circuit breakers" to stop a crash. The market operates 24/7/365.

---

## ARTICLE II: SPECIFIC BONDING CURVE & ALGORITHMIC RISKS

The economic model of the Safwa Protocol relies on a specific mathematical formula. This introduces unique risks not present in traditional markets.

### 2.1. Slippage and Execution Risk

The price displayed on the `safwa.network` interface is an **estimate** based on the current block.

- **Area Under the Curve:** The actual cost to mint tokens is calculated as the integral (area under the curve). For large orders, the average price paid will be **higher** than the spot price.
- **Negative Slippage:** When selling, the average price received will be **lower** than the spot price. You explicitly accept this mathematical loss of value (Slippage) as a cost of using the Protocol.

### 2.2. Front-Running and MEV Attacks

The Polygon Blockchain is a public ledger. Sophisticated actors and automated "MEV Bots" (Maximal Extractable Value) monitor pending transactions.

- **Sandwich Attacks:** A bot may detect your large buy order, buy immediately before you to artificially inflate the price, and sell immediately after you to profit. This forces you to pay a higher price than intended.
- **No Protection:** The Protocol cannot prevent these attacks. You bear the sole responsibility for setting appropriate "Slippage Tolerance" limits in your transaction settings.

### 2.3. The "Tax Trap" Risk

The Protocol enforces a **0.1% Tax** on all `sell` transactions.

- **Break-Even Difficulty:** To exit your position without a loss, the token price must appreciate by a percentage greater than the sum of the **0.1% Tax** + **Entry Gas Fees** + **Exit Gas Fees**. If the price remains stable, you will suffer a net loss upon selling.

---

## ARTICLE III: SMART CONTRACT AND TECHNOLOGY RISKS

The Protocol runs on the Polygon Blockchain using immutable Solidity code.

### 3.1. Code Vulnerabilities

While the code has been deployed and verified, software is never error-free.

- **Exploits:** There is a risk that the smart contract could contain undiscovered bugs, vulnerabilities, or logic errors that could be exploited by hackers to drain the Reserve.
- **Immutability:** Because the Admin Rights have been **RENOUNCED**, the original developers cannot "patch" or "fix" the code if a bug is discovered. A critical bug could result in the permanent loss of all funds.

### 3.2. Irreversibility of Transactions

Blockchain transactions are final.

- **User Error:** If you send SAFWA or USDC to the wrong address, use the wrong network (e.g., Ethereum Mainnet instead of Polygon PoS), or interact with a malicious "phishing" contract, your funds are permanently lost.
- **No Recovery:** We cannot reverse transactions, recover accounts, or reset passwords.

### 3.3. Blockchain Dependency (Polygon PoS)

The Safwa Protocol is entirely dependent on the Polygon Network.

- **Network Failure:** If the Polygon network experiences significant congestion, a consensus failure, or a "chain halt," the Safwa Protocol will become unusable. You may be unable to sell your tokens during a market crash.
- **Gas Fee Spikes:** Sudden spikes in Polygon Gas Fees could make it economically unviable to withdraw small amounts of capital.

---

## ARTICLE IV: LIQUIDITY AND RESERVE RISKS

### 4.1. Reserve Asset Risk (USDC)

The Safwa Protocol relies on **USDC** (USD Coin) as its reserve asset.

- **De-Peg Risk:** If USDC loses its 1:1 peg to the US Dollar (due to banking failures or Circle insolvency), the value of the Safwa Reserve will collapse.
- **Bridge Risk:** The USDC used is "Bridged USDC" on Polygon. If the bridge between Ethereum and Polygon is hacked, the bridged USDC may become worthless.

### 4.2. "Bank Run" Scenario

While the Bonding Curve is designed to be fully backed, extreme market panic could theoretically test the solvency of the contract mechanisms.

- **Congestion:** In a "Bank Run" scenario where all users try to sell simultaneously, network congestion may prevent your transaction from being mined before the price drops significantly.

---

## ARTICLE V: REGULATORY, LEGAL, AND TAX RISKS

The regulatory status of cryptographic protocols and algorithmic tokens is unsettled in many jurisdictions.

### 5.1. Regulatory Action

It is possible that governments or regulators (such as the FSA in St. Vincent or the SEC in the USA) may view the Safwa Protocol as an unregistered security or prohibited financial instrument.

- **Website Shutdown:** This could result in the seizure of the `safwa.network` domain or the arrest of contributors.
- **User Liability:** You are solely responsible for ensuring that your participation complies with the laws of your country of residence and citizenship.

### 5.2. Tax Obligations

You acknowledge that you are solely responsible for determining, calculating, and paying all taxes applicable to capital gains or earnings you derive from the Protocol.

- **No Reporting:** The Protocol does not issue tax forms. You must track your own cost basis and declare all revenue to your local tax authority.
- **Fines:** Failure to report crypto income may result in severe fines or criminal penalties in your home jurisdiction.

---

## ARTICLE VI: PARTNERSHIP LIABILITY

By interacting with the Protocol, you are entering into a **General Partnership** (as defined in our Terms of Service).

### 6.1. Shared Liability

In certain jurisdictions, this legal structure may expose you to shared liability for the actions of the network.

- **Waiver:** You explicitly waive your right to claim status as a "consumer," "victim," or "creditor" in legal proceedings against the Protocol.

### 6.2. Indemnification

You agree to indemnify, defend, and hold harmless the open-source developers, interface maintainers, and other partners from any claims, losses, damages, or legal fees arising from your participation or your violation of these terms.

---

## ARTICLE VII: WEBSITE INDEPENDENCE

The website `safwa.network` is merely a graphical interface (GUI) and does not control the Protocol.

### 7.1. Downtime and Access

The website may go offline for maintenance, be taken down by hosting providers (e.g., Vercel, Cloudflare), or be blocked by ISPs.

- **Protocol Continuity:** Even if the website is down, the Smart Contract remains active on the blockchain. You acknowledge that you should know how to interact with the contract directly via **PolygonScan** in case of website failure.

### 7.2. Phishing Risk

You are responsible for verifying that you are visiting the official domain.

- **Scams:** Scammers may create fake "Safwa" websites or "Support" accounts to steal your private keys. The official developers will **NEVER** ask for your Seed Phrase or Private Key.

---

## ARTICLE VIII: CENTRALIZATION & THIRD-PARTY DEPENDENCY RISKS

This Protocol relies on external third-party systems that are outside the control of the Smart Contract or the Developers.

### 8.1. Reliance on Centralized Stablecoin (USDC)

The Safwa Protocol utilizes **USDC** (USD Coin) as its base currency. USDC is a centralized asset issued by Circle Internet Financial, LLC ("Circle").

- **Blacklist Risk:** Circle maintains a "Blacklist" mechanism that allows them to freeze USDC held in specific addresses.
- **Protocol Paralysis:** The Safwa Smart Contract sends a mandatory tax fee to a hard-coded `taxWallet` on every sell transaction. If Circle were to blacklist this `taxWallet` address, the tax transfer would fail, causing the entire `sell()` function to revert. **This would result in a permanent "Denial of Service," rendering all user funds irretrievable.**
- **No Recourse:** Because Administrative Ownership has been renounced, the Developers cannot update the `taxWallet` to a new address to resolve this issue.

### 8.2. Token Compatibility (Native vs. Bridged)

The Polygon Network hosts multiple versions of USDC (e.g., "Native USDC" and "Bridged USDC.e").

- **Strict Compatibility:** The Safwa Smart Contract is hard-coded to accept only **one** specific address of USDC.
- **Loss of Funds:** If you attempt to send the wrong version of USDC (even if it has the same name and value) to the contract, your funds may be **permanently lost** or uncredited, with no possibility of recovery.

---

## **ACKNOWLEDGMENT**

**BY EXECUTING THE `BUY()` FUNCTION, CONNECTING YOUR WALLET TO THE INTERFACE, OR HOLDING THE SAFWA TOKEN, YOU WARRANT THAT:**

1. **YOU HAVE READ THIS RISK DISCLOSURE STATEMENT.**
2. **YOU FULLY UNDERSTAND THE TECHNICAL AND FINANCIAL RISKS INVOLVED.**
3. **YOU ACCEPT THESE RISKS VOLUNTARILY.**
4. **YOU ARE INVESTING ONLY FUNDS YOU CAN AFFORD TO LOSE.**
