class Bill {
  double totalAmount;
  double tipAmount;
  double noOfPeople;
  

  Bill(
      {required this.totalAmount,
      required this.tipAmount,
      required this.noOfPeople});

  String getTotalAmountPerPerson() {
    return ((totalAmount + tipAmount) / noOfPeople).toStringAsFixed(2);
  }

  String getAmountPerPerson() {
    return (totalAmount / noOfPeople).toStringAsFixed(2);
  }

  String getTipPerPerson() {
    return (tipAmount / noOfPeople).toStringAsFixed(2);
  }

  String getTotalBill() {
    return (tipAmount + totalAmount).toStringAsFixed(2);
  }
  String getTotalAmount() {
    return (totalAmount).toStringAsFixed(2);
  }
  String getTotalTip() {
    return (tipAmount).toStringAsFixed(2);
  }
  
  
}
