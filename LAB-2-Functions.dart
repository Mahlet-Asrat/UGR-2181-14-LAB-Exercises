import 'dart:io';
void main() {
  stdout.write("Enter the fist number: ");
  String S = stdin.readLineSync()!;
  int start = int.parse(S);

  stdout.write("Enter the Second number: ");
  String L = stdin.readLineSync()!;
  int end = int.parse(L);

  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print('$i is a prime number');
    }
  }
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}