# 🌟 SAFWA (SFW§) - Help Center & FAQ

Welcome to the SAFWA Help Center! Here, we explain everything you need to know about the SAFWA network, how to trade, and how our unique "Bonding Curve" technology protects your liquidity.

---

## 1. 🧠 The Basics: What is SAFWA?

### 1.1 What exactly is SAFWA (SFW§)?

SAFWA is a decentralized digital token living on the **Polygon Network**.

Unlike normal tokens that you buy from other people on an exchange, SAFWA uses a special smart contract known as a **Bonding Curve**. This means you are not buying from a person; you are buying directly from a smart contract that acts like a "Digital Vending Machine." It is always open, 24/7.

### 1.2 What is a "Bonding Curve"? (Simple Explanation)

Think of a Bonding Curve as an automated pricing scale:

* **When people buy:** The machine mints new tokens, and the price slightly **increases** for the next person.
* **When people sell:** The machine burns their tokens, and the price slightly **decreases** for the next person.

This system guarantees that there is **always** a price and **always** money available to pay you when you want to sell. You never have to wait for a "buyer."

### 1.3 How is the price calculated?

The price is set by pure math, not by a human. We use a "Square Root" formula:
> **Price = 0.005 × √(Total Supply) + 1**

In simple terms: As the project grows and more tokens exist, the value of each token gradually goes up.

### 1.4 Who controls the price?

**No one.** There is no CEO or manager deciding the price. The price is strictly determined by the code ("Code is Law"). If users buy, it goes up. If users sell, it goes down. It is purely supply and demand.

---

## 2. 💸 Buying & Selling

### 2.1 How do I buy SAFWA?

It's easy!

1. Connect your wallet (like MetaMask or Trust Wallet) to our website.
2. Make sure you have **USDC** on the Polygon network.
3. Enter the amount of USDC you want to invest.
4. Click **"Approve"** (first time only) and then **"Buy"**.
5. The contract will mint your new SFW§ tokens and send them to your wallet instantly.

### 2.2 How do I sell?

You can sell back to the contract at any time:

1. Go to the "Sell" tab on our dApp.
2. Enter how many SFW§ tokens you want to sell.
3. The dApp will show you exactly how much USDC you will get back.
4. Click **"Sell"**, and the contract will burn your tokens and send you the cash immediately.

### 2.3 Which currency do I need?

You need **Native USDC** on the Polygon Network.

* **Symbol:** USDC
* **Contract Address:** `0x3c499c542cEF5E3811e1192ce70d8cC03d5c3359`

> **⚠️ Important:** Do NOT use "Bridged USDC.e". If you have USDC.e, please swap it for Native USDC on Uniswap first.

### 2.4 Why do I need to "Approve" my USDC?

Think of your wallet like a bank vault. The SAFWA contract is like a cashier. Before the cashier can take your payment, you must sign a permission slip saying, *"I authorize this cashier to take 100 USDC from my vault."*
This is a standard security feature for all crypto tokens. You usually only do this once.

### 2.5 What is "Slippage" and why did my transaction fail?

Since the price changes with every single trade, the price might move slightly between the moment you click "Buy" and the moment the blockchain confirms it.

* **Slippage** is your way of saying: *"I am okay buying even if the price moves by 1%."*
* If the price moves more than your limit, the transaction fails to protect you from paying too much.
* **Fix:** Try increasing your "Slippage Tolerance" in the settings to **0.5%** or **1.0%**.

---

## 3. 💰 Fees, Taxes & Rewards

### 3.1 Are there fees to buy?

**No.** Buying SAFWA is **0% Tax**. You only pay the small network fee (Gas) to Polygon (usually a few cents).

### 3.2 Is there a fee to sell?

Yes, there is a small **0.1% Tax** when you sell tokens back to the contract. This supports the project's development.

### 3.3 What is the "Whale Protection" Cap?

We believe large investors shouldn't be punished. The sell tax is **Capped at 100 USDC**.

* If you sell $1,000 worth, you pay ~$1 tax.
* If you sell $1,000,000 worth, you pay **only 100 USDC** tax.

### 3.4 Why is the "Buy Price" slightly higher than the "Sell Price"?

This is a safety feature called **Rounding**.

* When you buy, we round **UP** to the nearest tiny fraction.
* When you sell, we round **DOWN** to the nearest tiny fraction.
* **Why?** This ensures the contract *always* has a little bit of extra money (surplus) so it never runs dry. It keeps your investment safe.

---

## 4. 🔒 Safety & Security

### 4.1 Is my money safe? (Rug Pull Protection)

**Yes.** The SAFWA smart contract is designed to be **trustless**.

* The developer **cannot** withdraw the USDC reserves.
* The developer **cannot** print free tokens.
* The liquidity is "locked" by math—it can only be released when you sell your tokens.

### 4.2 What happens if everyone sells at once?

In a traditional bank, if everyone withdraws money, the bank runs out (a "Bank Run").
In SAFWA, this is **impossible**. The contract functions as a "Full Reserve" system. It holds 100% of the USDC needed to pay back every single token in existence at the current curve price.

### 4.3 I accidentally sent MATIC/WETH to the contract. Can I get it back?

**Maybe.** The contract has a `rescueTokens` function that allows the admin to recover *unsupported* tokens (like MATIC or WETH) that were sent by mistake.

* *Note:* The admin **cannot** rescue USDC or SAFWA, as those are protected.

---

## 5. 🛠 Troubleshooting

### 5.1 I bought tokens, but I don't see them in MetaMask

Don't worry, they are there! MetaMask just hides new tokens by default. You need to "Import" them:

1. Open MetaMask -> Click "Import Tokens".
2. Paste the SAFWA Address: `0x98376d6dcc148FcdBdbaa4E895ee6f2D3FE52df4`
3. The symbol (SFW§) should appear automatically. Click "Import".

### 5.2 The site says "Insufficient Balance" but I have money

Check your wallet carefully. Do you have **Native USDC**?

* If your token says **USDC.e**, that is the "old" version. The contract does not accept it.
* **Solution:** Go to Uniswap and swap `USDC.e` -> `USDC` (Native).

### 5.3 My transaction is stuck or pending?

This is usually a Polygon network issue. You can:

1. Wait a few minutes.
2. Speed up the transaction in your wallet by paying a slightly higher gas fee.
