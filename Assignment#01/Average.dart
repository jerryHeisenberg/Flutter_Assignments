import 'dart:io';
//Average

void main() {
  print("Calculate Average");
  print("=================");
  print("Enter value of A : ");
  String valueAInput = stdin.readLineSync() as String;
  double valueA = double.parse(valueAInput);
  print("Enter value of B :");
  String valueBInput = stdin.readLineSync() as String;
  double valueB = double.parse(valueBInput);
  double valueAverage = (valueA + valueB) / 2;

  print("Average = ($valueA + $valueB) /2");
  //format to 2 decimal point.
  print("Average = ${valueAverage.toStringAsFixed(2)}");
}
