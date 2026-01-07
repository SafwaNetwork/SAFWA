# PARTNERSHIP AGREEMENT & TERMS OF SERVICE

- **Last Updated:** January 7, 2026
- **Version:** 0.1.0
- **Effective Date:** Upon Transaction Execution
- **Jurisdiction:** Saint Vincent and the Grenadines
- **Smart Contract Address:** `[INSERT DEPLOYED CONTRACT ADDRESS HERE]`

---

## PREAMBLE

**THIS AGREEMENT** is made between the initial deployers of the Safwa Protocol code (the "Creators") and every individual or entity (the "User" or "Partner") who connects a digital wallet, executes a transaction, or holds the digital cryptographic asset known as "SAFWA" (the "Token").

**WHEREAS**, the Safwa Protocol is a decentralized, autonomous software utility deployed on the Polygon Blockchain; and
**WHEREAS**, the Protocol operates without a central server, board of directors, or management team, relying solely on immutable smart contract code; and
**WHEREAS**, the User desires to participate in this decentralized network not as a consumer, but as an active participant and co-venturer;

**NOW, THEREFORE**, in consideration of the mutual covenants contained herein, the User agrees to the following terms:

---

## ARTICLE I: DEFINITIONS AND INTERPRETATION

### 1.1. Definitions

For the purposes of this Agreement, the following terms shall have the meanings ascribed to them below:

- **"Bonding Curve"** means the immutable mathematical algorithm encoded within the Smart Contract that automatically determines the price of the Token based on the Total Supply. The specific formula is defined as , where  is the Total Supply.
- **"Creators"** means the software developers, architects, and initial deployers who wrote the open-source code for the Protocol. Upon deployment, the Creators relinquish control to the immutable logic of the blockchain.
- **"DApp"** (Decentralized Application) means the web-based user interface (GUI) hosted at `safwa.network` or any other domain, which serves merely as a tool to visualize blockchain data and facilitate transaction signing.
- **"Gas Fees"** means the transaction fees paid to the Polygon Network validators (in MATIC/POL) to process transactions. These fees are non-refundable and outside the control of the Protocol.
- **"Immutability"** means the technical state of the Smart Contract wherein the administrative privileges (ownership) have been restricted or revoked, rendering the core logic permanent and unchangeable by any human intervention.
- **"Partnership"** means the Safwa Network General Partnership, a decentralized association of all active Token holders and participants, formed automatically upon interaction with the Protocol.
- **"Reserve"** means the pool of USDC (USD Coin) held within the Smart Contract custody, which acts as the counter-party for all `sell()` transactions.
- **"Slippage"** means the difference between the expected price of a trade and the executed price, caused by market movements or the integral calculation of the Bonding Curve (Area Under the Curve).

---

## ARTICLE II: NATURE OF RELATIONSHIP (THE "CO-VENTURE" CLAUSE)

### 2.1. No Consumer Relationship

**YOU EXPLICITLY ACKNOWLEDGE AND AGREE THAT YOU ARE NOT A CONSUMER, CLIENT, OR CUSTOMER OF THE CREATORS.**
By interacting with the Protocol, you are utilizing open-source software to manage your own assets. No service is being provided to you. The Creators do not act as your custodian, fiduciary, financial advisor, or asset manager.

### 2.2. Formation of General Partnership

By executing a `buy()`, `sell()`, or `transfer()` transaction, you voluntarily enter into a **General Partnership** with the network.

- **A. Status as Partner:** You agree that you are a **Partner** in this decentralized venture. You are acquiring a utility stake in the network logic.
- **B. Equality of Status:** You hold equal legal standing to the Creators. The Creators are merely "Early Partners" who contributed code. They possess no special authority to reverse transactions or recover funds.

### 2.3. Shared Liability & Waiver of Victim Status

As a Partner, you accept full shared legal and regulatory liability for the operations of the network. You explicitly acknowledge that in the event of any legal action, regulatory inquiry, or criminal investigation against the Safwa Protocol:

- **Co-Conspirator Status:** You shall be considered a co-venturer and partner in the enterprise.
- **Waiver of Rights:** You explicitly waive all rights to claim "consumer protection," "investor status," "whistleblower protection," or "victim status" in any jurisdiction.
- **Shared Loss:** You agree that any loss of funds (due to hack, bug, or market crash) is a "business loss" of the Partnership, not a theft or fraud by the Creators.

---

## ARTICLE III: THE TECHNOLOGY AND IMMUTABILITY

### 3.1. Code is Law

You acknowledge that the Smart Contract logic is the final and sole arbiter of all transactions.

- **Autonomous Execution:** Transactions are processed automatically by the Polygon validators. Once confirmed, a transaction is irreversible.
- **No "God Mode":** The Creators do not possess a "Master Key" or "Backdoor" to access User funds, freeze wallets, or censor transactions.

### 3.2. Independence of the Interface

You acknowledge that the website `safwa.network` is distinct from the Smart Contract.

- **No Liability for UI:** The website is provided "as is." If the website goes offline, is hacked, or displays incorrect data, the underlying Smart Contract remains unaffected.
- **Permissionless Access:** You acknowledge that you can interact with the Protocol directly via a Block Explorer (e.g., PolygonScan) or alternative front-ends, and that reliance on the official website is at your own risk.

---

## ARTICLE IV: ECONOMIC MECHANICS & FINANCIAL LOGIC

### 4.1. The Bonding Curve Mechanism

You acknowledge that the price of the Token is **not** determined by an order book or free market negotiation, but by a rigid mathematical formula:

- **Minting (Buying):** When you buy, you increase the Supply, which mathematically increases the Price for the next buyer.
- **Burning (Selling):** When you sell, you decrease the Supply, which mathematically decreases the Price for the next seller.

### 4.2. Solvency and The Reserve

You understand that the Protocol acts as an Automated Market Maker (AMM). The ability to sell your Tokens depends entirely on the solvency of the **Reserve**.

- **Backing:** The Protocol aims to maintain 100% backing of the Bonding Curve.
- **Risk of Ruin:** If the Reserve is drained due to a smart contract exploit, bridge failure, or catastrophic black swan event, the Token may become illiquid and valued at zero.

### 4.3. Taxes and Fees

You agree to the automated deduction of fees as hard-coded in the smart contract:

- **Sell Tax:** A tax of **0.1%** is levied on all `sell` transactions (refunds).
- **Tax Cap:** This tax is capped at a maximum of **100 USDC** per transaction.
- **Destination:** Tax revenue is sent to the `taxWallet` to fund network maintenance, development, and operational costs. You agree that you have no claim to these tax revenues.

---

## ARTICLE V: COMPREHENSIVE RISK DISCLOSURE

You represent that you are sophisticated in the use of blockchain technology and fully understand the following risks:

### 5.1. Financial Risks

- **Volatility:** The Price of SAFWA is highly volatile. A mass sell-off by other Partners will cause the price to crash.
- **Slippage:** The execution price of your transaction may be lower than the displayed price due to the "Area Under the Curve" calculation mechanics or "Front-Running" attacks by MEV bots.
- **Total Loss:** You accept the risk that you may lose **100% of your capital**.

### 5.2. Technical Risks

- **Smart Contract Bugs:** Despite audits, software bugs may exist. You accept the risk of exploit.
- **Network Failure:** The Polygon PoS network may experience downtime, congestion, or consensus failure.
- **Wallet Security:** You are solely responsible for safeguarding your Private Keys and Seed Phrases. The Protocol cannot recover lost keys.

### 5.3. Regulatory Risks

- **Classification:** Regulators in your jurisdiction may classify SAFWA as a security, commodity, or restricted financial instrument.
- **Prohibition:** Future laws may ban the use of non-custodial wallets or decentralized protocols.

---

## ARTICLE VI: USER REPRESENTATIONS AND WARRANTIES

By using the Protocol, you represent and warrant that:

1. **Compliance:** You are not a citizen, resident, or tax resident of the **United States of America**, **Egypt**, **Algeria**, **Bangladesh**, or any jurisdiction where participation in decentralized finance is prohibited.
2. **Sanctions:** You are not a person or entity on the **OFAC Specially Designated Nationals (SDN)** list or any UN Sanctions list.
3. **Non-Investment:** You are acquiring SAFWA solely for its **utility** (e.g., access to platform services, voting, network participation) and NOT with an expectation of profit derived from the efforts of others.
4. **Tax Responsibility:** You are solely responsible for determining if your delivery, acceptance, ownership, or use of the Token gives rise to any tax liability in your home jurisdiction.

---

## ARTICLE VII: LIMITATION OF LIABILITY & RELEASE

### 7.1. "AS IS" and "AS AVAILABLE"

**TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, THE PROTOCOL, THE SMART CONTRACT, AND THE INTERFACE ARE PROVIDED "AS IS" AND "AS AVAILABLE," WITHOUT WARRANTY OF ANY KIND.**
The Creators disclaim all warranties, express or implied, including but not limited to merchantability, fitness for a particular purpose, and non-infringement.

### 7.2. Zero Liability Clause

In no event shall the Creators, Developers, Contributors, or Affiliates be liable for any indirect, incidental, special, consequential, or punitive damages, including but not limited to:

- Loss of profits, data, use, goodwill, or other intangible losses.
- Damages resulting from hacking, tampering, or other unauthorized access.
- Errors or omissions in the Smart Contract code.

### 7.3. Indemnification

You agree to defend, indemnify, and hold harmless the Creators and the Partnership from and against any and all claims, damages, obligations, losses, liabilities, costs, and expenses (including attorney's fees) arising from:

- Your use of the Protocol.
- Your violation of these Terms.
- Your violation of any third-party right.
- Your violation of any applicable law.

---

## ARTICLE VIII: DISPUTE RESOLUTION AND GOVERNING LAW

### 8.1. Governing Law

This Agreement and any dispute or claim arising out of or in connection with it shall be governed by and construed in accordance with the laws of **Saint Vincent and the Grenadines**.

### 8.2. Mandatory Binding Arbitration

Any dispute, controversy, or claim arising out of or relating to this Agreement, or the breach, termination, or invalidity thereof, shall be settled by **binding arbitration** in accordance with the *Arbitration Act (Chapter 17) of the Laws of Saint Vincent and the Grenadines*.

- **Seat of Arbitration:** Kingstown, Saint Vincent and the Grenadines.
- **Language:** English.
- **Arbitrator:** The dispute shall be heard by a single arbitrator appointed in accordance with the Rules.

### 8.3. Class Action Waiver

**YOU HEREBY WAIVE ANY RIGHT TO PARTICIPATE IN A CLASS ACTION LAWSUIT OR CLASS-WIDE ARBITRATION.** All disputes must be resolved on an individual basis.

---

## ARTICLE IX: MISCELLANEOUS

### 9.1. Entire Agreement

These Terms, combined with the **Privacy Policy**, **Risk Disclosure Statement**, and the **Source Code** of the Smart Contract, constitute the entire agreement between you and the Partnership.

### 9.2. Severability

If any provision of these Terms is held to be invalid or unenforceable, such provision shall be struck and the remaining provisions shall be enforced to the fullest extent under law.

### 9.3. Amendment

The Creators reserve the right to modify the website Terms of Service at any time. However, the **Smart Contract Logic** is immutable and cannot be amended by these Terms.

---

**BY CLICKING "CONNECT WALLET," "BUY," "SELL," OR BY SIGNING ANY TRANSACTION ON THE PROTOCOL, YOU DIGITALLY SIGN THIS AGREEMENT AND CONFIRM:**

1. **I HAVE READ AND UNDERSTOOD THESE TERMS.**
2. **I AM SOPHISTICATED IN BLOCKCHAIN TECHNOLOGY.**
3. **I ACCEPT MY ROLE AS A PARTNER IN THIS VENTURE.**
4. **I RELEASE THE CREATORS FROM ALL LIABILITY.**
