import 'dart:io';
void main(){
  stdout.write("Enter a number: ");
  String S = stdin.readLineSync()!;
  double number = double.parse(S);

  if ((number % 2) == 0){
    print("The number is even");
  } else{
    print("The number is Odd");
  }
}
