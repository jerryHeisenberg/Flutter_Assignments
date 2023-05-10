//5.Create a class named “Bank” with a list of BankAccount objects as a property. Add a method to add a new bank account to the list, and another method to remove a bank account
//from the list. Also, add a method to find the bank account with the highest balance.

import 'dart:io';
import 'dart:math';

class BankAccount {
  String accName;
  int accountNo;
  int balance;
  BankAccount(this.accName, this.accountNo, this.balance);
}

class Bank {
  List<BankAccount> accounts = [];

  void addAccount() {
    print("Enter your details.");
    print("Enter your Account Name: ");
    String nameInput = stdin.readLineSync() as String;
    String name = nameInput;
    Random random = Random();
    var accountNumber = random.nextInt(9999999) + 1111111;

    print("Enter your Account Balance: ");
    String balanceInput = stdin.readLineSync() as String;
    int balance = int.parse(balanceInput);
    print("Your Account Name is: $name");
    print("Your Account Number is: $accountNumber");
    print("Your Account Balance is: \$$balance");

    BankAccount account = BankAccount(name, accountNumber, balance);

    accounts.add(account);
  }

  void delAccount() {
    if (accounts.isEmpty) {
      print("No Account Found!!");
    }
    accounts.forEach((account) {
      print(
          "${account.accName} || ${account.accountNo} || \$${account.balance}");
    });
    print("Enter details to delete an account: ");
    String nameInput = stdin.readLineSync() as String;
    String name = nameInput;
    accounts.removeWhere((account) => account.accName == name);
    print("Updated Accounts list:");
    accounts.forEach((account) {
      print(
          "${account.accName} || ${account.accountNo} || \$${account.balance}");
    });
  }

  void highBalance() {
    if (accounts.isEmpty) {
      print("No account Found!!");
    } else {
      BankAccount maxNumber = accounts[0];
      for (int i = 1; i > accounts.length; i++) {
        if (accounts[i].balance > maxNumber.balance) {
          maxNumber = accounts[i];
        }
      }
      print("Account with Highes Value is: \$${maxNumber.balance}");
    }
  }
}

void main() {
  Bank account = Bank();
  String again = 'y';
  do {
    print("Select the Following option to gain access: 'a' || 'b' || 'c'");
    String optionInput = stdin.readLineSync() as String;
    String selectOption = optionInput;
    if (selectOption == 'a') {
      account.addAccount();
    } else if (selectOption == 'b') {
      account.delAccount();
    } else if (selectOption == 'c') {
      account.highBalance();
    } else {
      print("Enter Valid Character.");
    }

    print("Wanna exit?? [y] [n]");
    String againInput = stdin.readLineSync() as String;
    String option = againInput;
    if (option == 'n') {
      again = 'n';
    } else if (option == 'y') {
      again = 'y';
    }
  } while (again != 'y');
}
