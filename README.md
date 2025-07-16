# 🧮 Calulator-Using-Jac

This is a basic command-line calculator built using the [JAC language](https://www.jac-lang.org). It supports four operations: addition, subtraction, multiplication, and division.

---

## ✅ Prerequisites

- [Python 3.8+](https://www.python.org/downloads/)
- [pip](https://pip.pypa.io/en/stable/)
- [Visual Studio Code](https://code.visualstudio.com/) (optional, recommended)

---

## 🚀 Setup Instructions

### 1. Navigate to the Project Directory

```bash
cd "D:\Projects\Learn Jac"
```

### 2. Create a Virtual Environment

```bash
python -m venv venv
```

### 3. Activate the Virtual Environment

- **On Command Prompt:**
  ```bash
  venv\Scripts\activate
  ```

- **On PowerShell:**
  ```powershell
  .\venv\Scripts\Activate.ps1
  ```

> If PowerShell gives an error, run:
> ```powershell
> Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
> ```

### 4. Install the JAC Language

```bash
pip install jaclang
```

### 5. Verify JAC Installation

```bash
jac --version
```

---

## ▶️ Running the Calculator

Make sure your virtual environment is activated, then run:

```bash
jac run calculator.jac
```

---

## 🧪 Example

```
Enter calculation (e.g., 4 + 5): 8 * 3
Result: 8.0 * 3.0 = 24.0
```

---

## 📝 Notes

- Input format: `number operator number` (e.g., `7 - 2`)
- Supported operators: `+`, `-`, `*`, `/`
- Handles invalid input and division by zero gracefully

---

## 📁 Project Structure

```
Learn Jac/
├── venv/                 # Virtual environment (auto-generated)
├── calculator.jac        # Main calculator implementation
└── README.md             # This file
```

---

## 🔗 Resources

- [JAC Language Docs](https://www.jac-lang.org)
- [Python Download](https://www.python.org/downloads/)
- [JAC on PyPI](https://pypi.org/project/jaclang/)
