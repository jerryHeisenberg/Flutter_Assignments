import 'dart:io';
//Check for Prime Number

void main() {
  print('Enter a positive integer:');
  String primeInput = stdin.readLineSync() as String;
  int number = int.parse(primeInput);

  if (isPrime(number)) {
    print('$number is a prime number');
  } else {
    print('$number is not a prime number');
  }
}

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }

  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }

  return true;
}
