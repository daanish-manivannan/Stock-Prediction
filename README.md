# 📈 Deep Learning-Based Price Prediction Model for Blockchain-Based Stock Market

This project presents a **prototype system** that combines **Deep Learning (LSTM)** and **Blockchain (Ethereum Smart Contracts)** to predict and securely store stock market data. It addresses key concerns in traditional stock markets—such as data tampering, lack of transparency, and centralized risk—by providing a **decentralized and intelligent solution**.

---

## 🧠 Project Summary

### 🔍 Problem Statement

Traditional stock exchanges suffer from:

* Centralized control
* Prone to manipulation and lack of transparency
* Delay in accurate real-time predictions

**Goal**: To develop a **blockchain-backed** system that:

* Predicts future stock prices using **LSTM Neural Networks**
* Stores, updates, and retrieves stock data securely through **Ethereum Smart Contracts**
* Ensures **transparency**, **immutability**, and **efficiency**

---

## 🔧 Tech Stack

| Layer               | Technology                                |
| ------------------- | ----------------------------------------- |
| Language (ML)       | Python (NumPy, Pandas, Matplotlib, Keras) |
| Deep Learning       | LSTM (Keras Sequential API)               |
| Blockchain Layer    | Solidity (Smart Contracts)                |
| IDE for Contracts   | Remix Ethereum IDE                        |
| Backend Integration | Web3 / Remix GUI                          |
| Dataset Format      | CSV, JSON                                 |

---

## 📁 Project Structure

```
📦 stock-price-predict-blockchain
├── lstm2.ipynb                    # LSTM-based price prediction (Final Notebook)
├── TCS SAMPLW DATA_refined.csv    # NSE Sample data for TCS
├── stmp.sol                       # Smart contract in Solidity
├── scenario.json                  # Sample blockchain transactions in JSON
├── Mini Project 2023 Review 3.pptx# Project PPT
└── README.md                      # Project documentation
```

---

## 🧩 Project Modules

### 🔹 Module 1: Data Preprocessing

* Read and clean **TCS stock data**
* Use fields: `Previous Close`, `Open`, `High`, `Low`, `Close`, `Volume`
* Convert to DataFrame, normalize values
* Format for LSTM input

### 🔹 Module 2: Blockchain Smart Contract

#### Key Functions in `stmp.sol`

| Function         | Purpose                                |
| ---------------- | -------------------------------------- |
| `addStock()`     | Add new stock data with all attributes |
| `updateStock()`  | Update existing stock data             |
| `getStock()`     | Retrieve stock data for a symbol       |
| `getStocksall()` | Retrieve all stock records             |
| `deleteStock()`  | Remove a stock symbol from the ledger  |

* Uses a `struct` for `Stock` details
* Stores `string` (symbol), `uint256` values for market data
* Deployed and tested in **Remix IDE**

### 🔹 Module 3: LSTM Price Prediction

* Model built using **Keras Sequential API**
* Architecture:

  * Input Layer
  * LSTM Layer(s)
  * Dense Output Layer
* Trained on historical stock data
* Returns predicted **next-day closing price**
* Plotted prediction vs actual

---

## 📊 Sample Input Data

| Prev Close | Open | High | Low | Close | Volume  |
| ---------- | ---- | ---- | --- | ----- | ------- |
| 988        | 990  | 1005 | 986 | 994   | 2669544 |
| 994        | 996  | 1001 | 991 | 994   | 824248  |
| 994        | 990  | 1016 | 991 | 1004  | 2613114 |

---

## 📦 How to Use

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/stock-price-predict-blockchain.git
cd stock-price-predict-blockchain
```

### 2. Run Prediction Notebook

```bash
jupyter notebook lstm2.ipynb
```

* Load the CSV data
* Train the LSTM model or load saved weights
* Plot predicted vs actual stock prices

### 3. Smart Contract Testing (in Remix)

* Visit: [https://remix.ethereum.org/](https://remix.ethereum.org/)
* Paste the contents of `stmp.sol`
* Compile and deploy
* Use contract interface to `addStock`, `getStock`, `updateStock`

---

## 🧪 Smart Contract: Function Signature

```solidity
function addStock(string memory symbol, uint256 prevClose, uint256 open,
                  uint256 high, uint256 low, uint256 close, uint256 volume) public

function updateStock(string memory symbol, uint256 prevClose, uint256 open,
                     uint256 high, uint256 low, uint256 close, uint256 volume) public

function getStock(string memory symbol) public view returns (
    uint256 prevClose, uint256 open, uint256 high,
    uint256 low, uint256 close, uint256 volume)

function deleteStock(string memory symbol) public
```

---

## 📚 Literature Reference

1. **Li et al. (2022)** - Blockchain-enabled IoT-BIM platform for supply chain
2. **Bhandari et al. (2022)** - Stock index prediction using LSTM
3. **Sakhare et al. (2023)** - Blockchain-based machine learning for stock movement

---

## 👨‍🏫 Mentorship & Team

### 👨‍🏫 Mentor

**Dr. M. Rajesh Babu, M.E., Ph.D**
HoD – Artificial Intelligence and Data Science

---

## 📃 License

This project is for educational and research purposes only.
Feel free to fork, modify, and contribute — credit is appreciated.

---

## 🙌 Acknowledgements

Special thanks to:

* Faculty at the Department of AI & DS
* Open-source contributors of Python, Remix, Solidity
* Ethereum blockchain developers

---
