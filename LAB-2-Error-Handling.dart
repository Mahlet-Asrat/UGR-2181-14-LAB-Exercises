double divideNumbers(double dividend, double divisor) {
  try {
    return dividend / divisor;
  } catch (e) {
    if (e is IntegerDivisionByZeroException) {
      print("Error: Division by zero is not allowed.");
    } else {
      print("An error occurred: $e");
    }
    return double.nan;
  }
}

void main() {
  double a = 10;
  double b = 0;

  double result = divideNumbers(a, b);
  print("Result: $result");
}