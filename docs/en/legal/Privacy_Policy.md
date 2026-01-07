# PRIVACY POLICY & GDPR DATA PROTECTION STATEMENT

- **Last Updated:** January 7, 2026
- **Version:** 0.1.0
- **Jurisdiction:** Saint Vincent and the Grenadines
- **Interface Domain:** `safwa.network`
- **Smart Contract Address:** `[INSERT DEPLOYED CONTRACT ADDRESS HERE]`

---

## 1. INTRODUCTION & SCOPE

This Privacy Policy describes how the open-source contributors and maintainers of the `safwa.network` interface ("we", "our", or "The Interface") handle information when you access our services.

By using the Interface to interact with the Safwa Decentralized Protocol (the "Smart Contract") on the Polygon Blockchain, you acknowledge that you are using a **Decentralized Application ("DApp")**.

**CRUCIALLY, YOU ACKNOWLEDGE THAT:**

1. **Public Ledger:** All transactions, token balances, and wallet addresses are permanently recorded on the public Polygon blockchain. This data is **not** controlled by us and cannot be modified or deleted.
2. **Decentralized Nature:** The Interface is merely a visualization tool. We do not maintain user accounts, passwords, or private databases.

---

## 2. IDENTITY OF THE DATA CONTROLLER

Due to the decentralized nature of the Protocol, traditional data controller roles do not apply in the standard manner.

### 2.1. For On-Chain Data (The Blockchain)

**We are NOT the Data Controller.**
The Polygon Blockchain validators (a global network of independent nodes) control the ledger. We have no ability to edit, delete, or obscure data written to the blockchain.

### 2.2. For Off-Chain Data (The Interface)

The **Safwa Interface Operators** act as the controller strictly for the limited technical data collected via the Website (e.g., local storage settings) and any voluntary communications (e.g., support tickets).

---

## 3. INFORMATION WE COLLECT (AND READ)

We prioritize **Data Minimization**. We do not create user accounts or passwords. However, to function, the Interface must "read" specific data.

### 3.1. Blockchain Data (Publicly Visible)

When you connect your digital wallet (e.g., MetaMask, Trust Wallet) to the Interface, we read the following public information from the blockchain to generate your dashboard:

- **Public Wallet Address:** (e.g., `0x123...`).
- **Token Balances:** Your holdings of **SAFWA** and **USDC**.
- **Transaction History:** Your specific `buy`, `sell`, and `transfer` interactions with the Safwa Smart Contract.
- **Allowance Data:** The amount of USDC you have approved the contract to spend.

**Note:** This information is public. Anyone with an internet connection can view this data on block explorers like **PolygonScan**. We do not "store" this data on private servers; we fetch it in real-time from the blockchain.

### 3.2. Technical Usage Data (Ephemeral)

To maintain the stability and security of the Interface, our web hosting and infrastructure providers (e.g., Cloudflare, Vercel, RPC Nodes) may temporarily process:

- **IP Addresses:** For DDoS protection, rate limiting, and geo-blocking (to prevent access from sanctioned jurisdictions).
- **Device Information:** Browser type and screen resolution to ensure the UI renders correctly.
- **Local Storage:** Minimal browser data to remember your "Wallet Connected" status and "Slippage Tolerance" settings.

### 3.3. Communication Data

If you voluntarily contact us via Telegram, Discord, or Email:

- **User Handle:** Your Telegram/Discord username.
- **Content:** The details of your support query (e.g., screenshots, transaction hashes).

---

## 4. INFORMATION WE DO NOT COLLECT

For the avoidance of doubt, the Interface and its operators **NEVER** have access to, collect, or store:

1. **Private Keys or Seed Phrases:** Your private keys remain encrypted on your device within your wallet software. We cannot access your funds.
2. **Personally Identifiable Information (PII):** We do not ask for your real name, physical address, phone number, or government ID.
3. **Financial Account Details:** We do not process fiat payments (Credit Cards/Bank Transfers). All transactions are peer-to-contract using crypto-assets.

---

## 5. PURPOSE OF DATA PROCESSING

We use the limited data we process solely to:

1. **Render the Dashboard:** To visually display your current Profit/Loss and Token Balance.
2. **Execute Transactions:** To construct the data payloads (e.g., `buy(amount)`) that your wallet signs.
3. **Security & Compliance:** To detect bot attacks and block IP addresses from prohibited jurisdictions (e.g., OFAC Sanctioned Countries).
4. **Network Health:** To monitor the aggregate volume of the Bonding Curve (e.g., "Total Value Locked").

---

## 6. THIRD-PARTY INFRASTRUCTURE (PROCESSORS)

Because `safwa.network` is a Web3 interface, it relies on third-party infrastructure. Your data may pass through:

- **RPC Providers:** (e.g., Alchemy, Infura, Polygon Public RPC). These nodes broadcast your transaction to the network. They may see your IP address and Wallet Address when you transact.
- **Wallet Providers:** (e.g., MetaMask, WalletConnect). These services are governed by their own privacy policies.
- **Hosting Services:** (e.g., Cloudflare, IPFS). Used to serve the website files and protect against DDoS attacks.

---

## 7. THE "RIGHT TO BE FORGOTTEN" & GDPR COMPLIANCE

Under the General Data Protection Regulation (GDPR), users typically have a "Right to Erasure" (Right to be Forgotten).

### 7.1. The Blockchain Exception (Immutability)

**You explicitly acknowledge that the "Right to Erasure" DOES NOT apply to data stored on the Polygon Blockchain.**

- **Technical Impossibility:** Once your wallet address interacts with the Safwa Smart Contract, that record is permanent and immutable. It is technologically impossible for us to delete, alter, or anonymize your transaction history.
- **Waiver:** By using the Protocol, you waive any claim against the open-source contributors regarding the permanence of your on-chain data.

### 7.2. Your Rights Regarding Off-Chain Data

For data that **we control** (e.g., support ticket logs or Telegram chat history), you retain your full GDPR rights:

- **Right to Access:** You may ask what off-chain data we hold about you.
- **Right to Erasure:** You may request that we delete your support history or ban your User ID from our Telegram bots.
- **How to Exercise:** Contact us via the official Community Support channels.

---

## 8. DATA SECURITY

- **Interface Security:** We use standard SSL/TLS encryption (HTTPS) for all website traffic.
- **No Central Database:** Since we do not have a database of users, there is no "central honey pot" for hackers to steal.
- **User Responsibility:** You are solely responsible for the security of your private keys and device. If your wallet is compromised, we cannot recover your funds.

---

## 9. INTERNATIONAL DATA TRANSFERS

By using the Interface, you acknowledge that:

1. **Global Network:** The Polygon Blockchain consists of nodes located in almost every country. Your transaction data will be replicated globally.
2. **Consent:** You explicitly consent to this cross-border transfer of data as it is inherent to the functioning of blockchain technology.

---

## 10. CHANGES TO THIS POLICY

We may update this Privacy Policy to reflect changes in legal requirements or technical infrastructure.

- **Notification:** Updates will be posted on this page.
- **Acceptance:** Continued use of the Interface after any changes constitutes acceptance of the new policy.

---

## 11. CONTACT

If you have questions regarding the **Frontend Interface**, you may check the open-source repository or community channels.
Questions regarding **Blockchain Data** should be directed to the Polygon network validators, as we do not control the chain.

**BY CONNECTING YOUR WALLET, YOU CONSENT TO THE PROCESSING OF YOUR DATA AS DESCRIBED HEREIN.**
