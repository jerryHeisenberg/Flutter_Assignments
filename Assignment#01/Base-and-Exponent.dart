import 'dart:io';
import 'dart:math';
//Base and Exponent

void main() {
  print("Calculate Base and Exponent");
  print("===========================");
  print("Enter Base: ");
  String baseInput = stdin.readLineSync() as String;
  int base = int.parse(baseInput);

  print("Enter Exponent: ");
  String exponentInput = stdin.readLineSync() as String;
  int exponent = int.parse(exponentInput);

  num result = pow(base, exponent);

  print("Calculate = $base ^ $exponent");
  print("Base and Exponent= ${result.toStringAsFixed(2)} ");
}
