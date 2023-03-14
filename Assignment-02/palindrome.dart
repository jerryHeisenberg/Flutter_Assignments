//6. Write a program that takes a string as input and checks if it is a palindrome. A palindrome is a string that reads the same forwards and backwards. For example, “racecar” is a palindrome.

import 'dart:io';

void main() {
  print("Enter A word to check if it is Palindrome or Not: ");
  String wordInput = stdin.readLineSync() as String;
  String word = wordInput;
  if (isPalin(word)) {
    print("The Word is a Palindrome");
  } else {
    print("Word is not a palindrome");
  }
}

bool isPalin(String word) {
  return word == word.split('').reversed.join('');
}
