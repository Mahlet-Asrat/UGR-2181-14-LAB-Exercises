import 'dart:io';

void main() {
  print("Enter a number: ");
  String userInput = stdin.readLineSync()!;

  try {
    int number = int.parse(userInput);
    print("Converted number: $number");
  } catch (e) {
    if (e is FormatException) {
      print("Invalid number format. Please enter a valid number.");
    } else {
      print("An error occurred: $e");
    }
  }
}