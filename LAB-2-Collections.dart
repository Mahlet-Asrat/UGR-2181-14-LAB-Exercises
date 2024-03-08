import 'dart:math';

void main() {

  List<int> randomNumbers = generateRandomNumbers(20, 1, 10);
  print("List of random numbers: $randomNumbers");


  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);
  print("Unique numbers: $uniqueNumbers");
}

List<int> generateRandomNumbers(int count, int min, int max) {
  Random random = Random();
  List<int> numbers = [];

  for (int i = 0; i < count; i++) {
    int randomNumber = random.nextInt(max - min + 1) + min;
    numbers.add(randomNumber);
  }

  return numbers;
}