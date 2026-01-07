# Static Analysis with Slither

This project uses [Slither](https://github.com/crytic/slither) for static analysis to detect potential vulnerabilities and code quality issues.

## Prerequisites

Ensure you have the following installed:

* Python 3.6+
* Node.js & npm (for dependency resolution)

## Installation Guide

### 1. Install `pipx` (if not installed)

```bash
sudo apt update
sudo apt install -y pipx
pipx ensurepath
```

*Note: You may need to restart your terminal after this step.*

### 2. Install Slither and Solc-Select

We use `pipx` to install Slither in an isolated environment. `solc-select` helps managing solidity compiler versions.

```bash
pipx install slither-analyzer
pipx install solc-select
```

### 3. Configure Solidity Compiler

Install and select the version used in the project (`0.8.33`):

```bash
solc-select install 0.8.33
solc-select use 0.8.33
```

### 4. Install Project Dependencies

Ensure OpenZeppelin contracts are installed:

```bash
npm install
```

## Running Analysis

Run Slither from the project root. We use `--solc-remaps` to map the OpenZeppelin imports to the `node_modules` folder.

```bash
slither . --solc-remaps '@openzeppelin=node_modules/@openzeppelin'
```

### Output Examples

**To get a human-readable summary table:**

```bash
slither . --solc-remaps '@openzeppelin=node_modules/@openzeppelin' --print human-summary
```

**to exclude informational and low severity issues:**

```bash
slither . --solc-remaps '@openzeppelin=node_modules/@openzeppelin' --exclude-low --exclude-informational
```

## Troubleshooting

* **"solc not found"**: Ensure `solc` is in your PATH. `solc-select` installs it to `~/.local/bin`.

    ```bash
    export PATH=$HOME/.local/bin:$PATH
    ```

* **"Source not found"**: Ensure `npm install` was run and the remapping is correct.
