# Project Changelog

All notable changes to the **Safwa Network** project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Planned

- Fork Testing on Polygon Mainnet.
- Deployment to Polygon Testnet (Amoy).
- Final Code Verification on Etherscan/PolygonScan.

---

## [0.1.0] - 2026-01-07

### Added

- **Legal Documentation:** Created a comprehensive suite of legal documents in both **English** (En) and **Arabic** (Ar), including:
  - Terms of Partnership & Service.
  - Risk Disclosure Statement.
  - Privacy Policy (GDPR Compliance).
  - AML/CTF & Sanctions Policy.
  - Law Enforcement Response Policy.
  - Income & Earnings Disclaimer.
  - Cookie Policy.
  - Security Architecture Statement.
- **Project Info:** Created `About.md` in English and Arabic to explain the protocol's philosophy and mechanics.
- **Log:** Created `docs/reports/log.md` to track project history.

### Changed

- **Documentation Structure:** Refactored the `docs/` directory to separate content by language and category:
  - `docs/ar/`: Arabic public-facing documents.
  - `docs/en/`: English public-facing documents.
  - `docs/reports/`: Consolidated technical reports (Audits, Tests, Simulations).
  - `docs/technical/`: Developer guides and specifications.
- **File Naming:** Renamed files to remove redundant `-En/-Ar` suffixes where directory context is sufficient (e.g., `AML_CTF_Policy-En.md` -> `en/legal/AML_CTF_Policy.md`).

### Verified

- **Simulation:** Confirmed solvency and bonding curve mechanics via 100M and 200M supply simulations (`docs/reports/tests/Simulations.md`).
- **Security:** Achieved 97.92 SolidityScan score (`docs/reports/audits/SmartContract_Audit.md`).

### Added (Late Session)

- **Whitepaper:** Created `Whitepaper.md` in both [English](docs/en/whitepaper.md) and [Arabic](docs/ar/whitepaper.md) covering:
  - Theoretical Framework (Liquidity Trilemma).
  - Mathematical Specifications (Bonding Curve Calculus).
  - Financial Engineering (Slippage, Arbitrage).
  - Risk Analysis (Bank Run, De-peg).
- **Cross-Links:** Added direct links to English original documents in all Arabic legal files to ensure legal clarity.
