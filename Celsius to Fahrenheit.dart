import 'dart:io';
import 'dart:math';
//Convert Celsius to Fahrenheit

void main() {
  print("Convert Celsius to Fahrenheit");
  print("===========================");
  print("Enter Temperture to Celsius: ");

  String celsiusInput = stdin.readLineSync() as String;
  int celsius = int.parse(celsiusInput);

  num result = (9 / 5) * celsius + 32;

  print("Fahrenheit = 9/5 X $celsius + 32 ");
  print("Celsius to Fahrenheit = $result° ");
}
