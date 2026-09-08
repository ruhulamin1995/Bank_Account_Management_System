
class BankAccount {
// Properties
String accountHolderName;
int accountNumber;

// Private variable - Encapsulation
double _balance;

// Constructor
BankAccount(
this.accountHolderName,
this.accountNumber,
this._balance,
);

// Deposit method
void deposit(double amount) {
if (amount > 0) {
_balance += amount;
print("After Deposit: Balance: ${_balance.toStringAsFixed(0)}");
} else {
print("Invalid deposit amount.");
}
}

// Withdraw method
void withdraw(double amount) {
if (amount <= 0) {
print("Invalid withdrawal amount.");
} else if (amount > _balance) {
print("Insufficient balance.");
} else {
_balance -= amount;
print("After Withdrawal: Balance: ${_balance.toStringAsFixed(0)}");
}
}

// Display account information
void displayAccountInfo() {
print("Account Holder: $accountHolderName");
print("Account Number: $accountNumber");
print("Balance: ${_balance.toStringAsFixed(0)}");
}
}

void main() {
// Creating first BankAccount object
BankAccount account1 = BankAccount("Rahim", 1001, 5000,);

// Creating second BankAccount object
BankAccount account2 = BankAccount("Karim", 1002, 8000,
);

// Display first account information
account1.displayAccountInfo();

print("");

// Deposit money
account1.deposit(2000);

print("");

// Withdraw money
account1.withdraw(1500);

print("\n-------------------------\n");

// Display second account information
account2.displayAccountInfo();
}
