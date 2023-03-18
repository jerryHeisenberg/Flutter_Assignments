import 'dart:io';
class BankAccount {
  int balance;
  int accountNumber;
  

  BankAccount(this.balance,this.accountNumber);
  void deposit() {
    int deposit= 50000;
    balance+=deposit;
    print("The new balance after the deposit is:Rs.$balance.");
  }
  void withdraw(){
    print("Enter Amount to Withdraw:");
    String drawInput = stdin.readLineSync() as String;
    int withdraw = int.parse(drawInput);
    int remaining = balance - withdraw; 
      print("The withdrew amount is Rs.$withdraw and the remaining balance is Rs.$remaining");
    
  }
}

class CheckingAccount extends BankAccount {
  int transactionLimit;
  
  CheckingAccount(int balance, int accountNumber,this.transactionLimit) : super(balance,accountNumber);

  void withdraw() {
    print("Enter Amount to Withdraw:");
    String drawInput = stdin.readLineSync() as String;
    int withdraw = int.parse(drawInput);
    if(withdraw>transactionLimit){
      print("Your entered amount is above the transaction Limit ");   
    }
    else{
      int remaining = balance - withdraw; 
      print("The withdrew amount is Rs.$withdraw and the remaining balance is Rs.$remaining");
    }
    
  }
}

void main() {
  CheckingAccount checkingAccount = CheckingAccount(60000,79346743,100000);
  checkingAccount.deposit();
  checkingAccount.withdraw();
  
}
