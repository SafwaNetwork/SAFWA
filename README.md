
<p align="center">
<img src="img/icon.svg" width="150" height="150" alt="SAFWA Logo">
</p>

# SAFWA Smart Contract (SFW§)

**SAFWA** (Arabic: صفوة; pronounced [ˈsˤaf.wa]; transl. "Elite" or "The Best of the Best") is an innovative **Bonding Curve Token** built on the **Polygon PoS** network. It implements a **Square Root Pricing Algorithm** where the price of the token is mathematically determined by its circulating supply.

## 🛡️ Audits & Security

> **SolidityScan Score: 97.92 / 100** (Secured)

The SAFWA contract has undergone rigorous testing and auditing processes to ensure maximum security and financial integrity:

* **[Financial Audit & Tokenomics Report](docs/en/Financial_Audit.md):** A deep-dive analysis confirming 100% solvency, mathematical correctness of the bonding curve, and resistance to economic attacks.
* **[Security Audit Report](docs/reports/audits/SmartContract_Audit.md):** A comprehensive code audit utilizing Slither static analysis and manual review, confirming the contract is safe for deployment.
* **[Simulation & Stress Test](docs/en/Simulations.md):** Verified solvency through large-scale simulations reaching **100M** and **200M** supply targets.
* **Immutable Logic:** The core mathematical and economic rules are immutable. The owner cannot pause the contract, blacklist users, or withdraw the USDC reserves.

## 📚 Documentation & Legal Compliance

The Safwa Network operates with a "Code is Law" philosophy, supported by a comprehensive legal framework available in both **English** and **Arabic**.

### 📄 Protocol Overview

* **[Whitepaper (Technical)](docs/en/whitepaper.md)**
* **[About SAFWA](docs/en/About.md)**

### 🏛️ Legal & Policy

* **[Terms of Partnership](docs/en/legal/Terms_of_Partnership.md)**
* **[Risk Disclosure](docs/en/legal/Risk_Disclosure.md)**
* **[Privacy Policy (GDPR)](docs/en/legal/Privacy_Policy.md)**
* **[AML & CTF Policy](docs/en/legal/AML_CTF_Policy.md)**
* **[Law Enforcement Policy](docs/en/legal/Law_Enforcement_Policy.md)**
* **[Cookie Policy](docs/en/legal/Cookie_Policy.md)**
* **[Income & Earnings Disclaimer](docs/en/legal/Income_Disclaimer.md)**
* **[Security Architecture Statement](docs/en/legal/Security_Statement.md)**

### 🛠️ Technical Reports

* **[Dev Guide](docs/en/Technical_Guide.md):** Deployment and testing instructions.
* **[Changelog](docs/reports/log.md):** Project updates and history.

## Key Features

* **Bonding Curve Pricing:** The price follows the formula $P(x) = 0.005 \times \sqrt{x} + 1$, ensuring a transparent and continuous price discovery mechanism.
* **Instant Liquidity:** Users can buy or sell SFW§ tokens at any time directly against the contract.
* **USDC Backed:** The contract manages a reserve of USDC (native Polygon USDC) that guarantees liquidity.
* **Tax Mechanism:** A low **0.1% tax** is applied only on sell refunds, capped at a maximum of **100 USDC** per transaction.
* **Native & Token Rescue:** Includes a restricted mechanism for the project admin to rescue accidentally sent ERC20 tokens or native ETH/MATIC, without being able to touch the USDC reserves or SFW§ supply.
* **Slippage Protection:** Built-in protection against slippage during both buy and sell operations.
* **Safety First:** Implements rigorous rounding strategies (Round UP on buys, Round DOWN on sells) to guarantee mathematical solvency.
* **Safety Surplus:** The contract strictly intentionally accumulates a mathematical surplus of dust USDC to ensure it is always over-collateralized.

## Contract Details

* **Token Name:** SAFWA
* **Symbol:** SFW§
* **Decimals:** 18
* **Payment Token:** USDC (Native Polygon, 6 decimals)
* **Network:** Polygon PoS
* **Solidity Version:** 0.8.33
* **Contract Address:** [`0x9837...df4`](https://polygonscan.com/address/0x98376d6dcc148FcdBdbaa4E895ee6f2D3FE52df4#code) | [Sourcify](https://repo.sourcify.dev/137/0x98376d6dcc148FcdBdbaa4E895ee6f2D3FE52df4) | [Blockscout](https://polygon.blockscout.com/address/0x98376d6dcc148FcdBdbaa4E895ee6f2D3FE52df4?tab=contract) (Verified)

## How it Works

1. **Buying:** Users send USDC to the contract to mint new SFW§ tokens. The cost is calculated based on the bonding curve integral.
2. **Selling:** Users burn SFW§ tokens to receive USDC refunds. The refund is calculated based on the area under the curve released by the sale.
3. **Reserves:** The contract holds the USDC paid for tokens as a reserve specifically to pay out future sellers.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

> **Disclaimer:** By using this code, interacting with the smart contract, or holding SFW§ tokens, you explicitly agree to all terms outlined in the legal documentation above and acknowledge that you are fully aware of all associated technical and financial risks.

---

# نسخة مترجمة باللغة العربية

**تنويه:** هذه الوثيقة هي نسخة مترجمة لأغراض التوضيح فقط. تُعد النسخة الإنجليزية أعلاه هي المرجع الوحيد والأساسي لأي اعتبارات أو مخاوف قانونية.

# العقد الذكي لـ "صفوة" (SFW§)

يُعد رمز **صفوة** (SAFWA) ابتكاراً في مجال "رموز منحنى الترابط" (Bonding Curve Tokens) القائمة على شبكة **Polygon PoS**. يطبق البروتوكول خوارزمية تسعير تعتمد على الجذر التربيعي، حيث يتحدد سعر الرمز رياضياً وبشكل حصري بناءً على العرض المتداول.

## 🛡️ التدقيق والأمن

> **درجة SolidityScan للأمان: 97.92 / 100** (مؤمّن)

خضع عقد "صفوة" لعمليات اختبار وتدقيق صارمة لضمان أقصى درجات الأمان والنزاهة المالية:

* **[تقرير التدقيق المالي والاقتصاد الرقمي](docs/ar/Financial_Audit.md):** تحليل معمق يؤكد ملاءة مالية بنسبة 100%، وصحة رياضية لمنحنى الترابط، ومقاومة تامة للهجمات الاقتصادية.
* **[تقرير التدقيق الأمني](docs/reports/audits/SmartContract_Audit.md):** تدقيق شامل للكود البرمجي باستخدام التحليل الثابت (Slither) والمراجعة اليدوية، مما يؤكد جاهزية العقد للنشر الآمن.
* **[المحاكاة واختبارات الإجهاد](docs/ar/Simulations.md):** تم التحقق من الملاءة المالية عبر عمليات محاكاة واسعة النطاق وصلت لأهداف عرض تبلغ **100 مليون** و **200 مليون** رمز.
* **منطق برمجى راسخ:** القواعد الرياضية والاقتصادية الأساسية غير قابلة للتغيير (Immutable). لا يمكن للمالك إيقاف العقد مؤقتاً، أو إدراج المستخدمين في القائمة السوداء، أو سحب احتياطيات USDC.

## 📚 التوثيق والامتثال القانوني

تعمل شبكة صفوة وفق فلسفة "الكود هو القانون"، مدعومة بإطار قانوني شامل متاح باللغتين **الإنجليزية** و**العربية**.

### 📄 نظرة عامة على البروتوكول

* **[الورقة البيضاء (التقنية)](docs/ar/whitepaper.md)**
* **[عن صفوة](docs/ar/About.md)**

### 🏛️ الشؤون القانونية والسياسات

* **[شروط الشراكة](docs/ar/legal/Terms_of_Partnership.md)**
* **[إفصاح المخاطر](docs/ar/legal/Risk_Disclosure.md)**
* **[سياسة الخصوصية (GDPR)](docs/ar/legal/Privacy_Policy.md)**
* **[سياسة مكافحة غسيل الأموال وتمويل الإرهاب](docs/ar/legal/AML_CTF_Policy.md)**
* **[سياسة إنفاذ القانون](docs/ar/legal/Law_Enforcement_Policy.md)**
* **[سياسة ملفات تعريف الارتباط](docs/ar/legal/Cookie_Policy.md)**
* **[إخلاء المسؤولية عن الدخل والأرباح](docs/ar/legal/Income_Disclaimer.md)**
* **[بيان البنية الأمنية](docs/ar/legal/Security_Statement.md)**

### 🛠️ التقارير الفنية

* **[دليل المطورين](docs/ar/Technical_Guide.md):** تعليمات النشر والاختبار.
* **[سجل التغييرات](docs/reports/log.md):** تحديثات المشروع وتاريخه.

## الميزات الرئيسية

* **تسعير منحنى الترابط:** يتبع السعر الصيغة الرياضية $P(x) = 0.005 \times \sqrt{x} + 1$، مما يضمن آلية شفافة ومستمرة لاكتشاف السعر.
* **سيولة فورية:** يمكن للمستخدمين شراء أو بيع رموز SFW§ في أي وقت مباشرة عبر العقد الذكي.
* **مدعوم بـ USDC:** يدير العقد احتياطياً من عملة USDC (بوليجون الأصلية) التي تضمن السيولة الدائمة.
* **آلية الضريبة:** تُطبق ضريبة منخفضة بنسبة **0.1%** فقط على مبالغ استرداد البيع، بحد أقصى يبلغ **100 USDC** لكل معاملة.
* **إنقاذ الرموز والعملات:** يتضمن آلية مقيدة تسمح لمسؤول المشروع بإنقاذ رموز ERC20 أو عملات ETH/MATIC المرسلة عن طريق الخطأ، دون القدرة على المساس باحتياطيات USDC أو عرض رموز SFW§.
* **حماية من الانزلاق السعري:** حماية مدمجة ضد الانزلاق السعري أثناء عمليات الشراء والبيع على حد سواء.
* **الأمان أولاً:** يطبق استراتيجيات تقريب حسابية صارمة (تقريب للأعلى في الشراء، وتقريب للأدنى في البيع) لضمان الملاءة المالية الرياضية.

## تفاصيل العقد

* **اسم الرمز:** SAFWA
* **رمز التداول:** SFW§
* **الكسور العشرية:** 18
* **عملة الدفع:** USDC (بوليجون الأصلية، 6 كسور عشرية)
* **الشبكة:** Polygon PoS
* **إصدار سوليديتي:** 0.8.33
* **عنوان العقد:** [`0x9837...df4`](https://polygonscan.com/address/0x98376d6dcc148FcdBdbaa4E895ee6f2D3FE52df4#code) | [Sourcify](https://repo.sourcify.dev/137/0x98376d6dcc148FcdBdbaa4E895ee6f2D3FE52df4) | [Blockscout](https://polygon.blockscout.com/address/0x98376d6dcc148FcdBdbaa4E895ee6f2D3FE52df4?tab=contract) (تم التحقق)

## كيف يعمل البروتوكول

1. **الشراء:** يرسل المستخدمون عملة USDC إلى العقد لصك رموز SFW§ جديدة. تُحسب التكلفة بناءً على تكامل منحنى الترابط.
2. **البيع:** يقوم المستخدمون بحرق رموز SFW§ لتلقي استرداد بعملة USDC. يُحسب الاسترداد بناءً على المساحة المحررة تحت المنحنى نتيجة البيع.
3. **الاحتياطيات:** يحتفظ العقد بعملات USDC المدفوعة مقابل الرموز كاحتياطي مخصص حصرياً للدفع للبائعين المستقبليين.

## الترخيص

هذا المشروع مرخص بموجب رخصة MIT - راجع ملف [LICENSE](LICENSE) للحصول على التفاصيل.

> **تنويه:** باستخدامك لهذا الكود، أو تفاعلك مع العقد الذكي، أو حيازتك لرموز SFW§، فإنك توافق صراحةً على جميع الشروط الواردة في الوثائق القانونية أعلاه وتقر بأنك على دراية تامة بجميع المخاطر التقنية والمالية المرتبطة بذلك.
