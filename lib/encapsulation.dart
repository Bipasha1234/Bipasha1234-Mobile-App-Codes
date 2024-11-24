class BankAccount {
  // Private field
  double _balance;

  // Constructor
  BankAccount(this._balance);

  // Getter for _balance (to read the balance)
  double get balance => _balance;

  // Setter for _balance (to update the balance safely)
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("Invalid amount. Balance cannot be negative.");
    }
  }

  // Public method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount}");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  // Public method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrew: \$${amount}");
    } else {
      print("Invalid withdrawal amount or insufficient balance.");
    }
  }
}

void main() {
  // Create a BankAccount instance
  BankAccount account = BankAccount(1000.0);

  // Accessing balance using getter
  print("Initial Balance: \$${account.balance}"); // Output: Initial Balance: $1000.0

  // Depositing money
  account.deposit(500.0); // Output: Deposited: $500.0

  // Withdrawing money
  account.withdraw(300.0); // Output: Withdrew: $300.0

  // Trying to withdraw more than available balance
  account.withdraw(1500.0); // Output: Invalid withdrawal amount or insufficient balance.

  // Accessing and modifying balance using getter and setter
  account.balance = 2000.0; // Safely updating the balance
  print("Updated Balance: \$${account.balance}"); // Output: Updated Balance: $2000.0

  // Attempting to set an invalid balance
  account.balance = -500.0; // Output: Invalid amount. Balance cannot be negative.
}
