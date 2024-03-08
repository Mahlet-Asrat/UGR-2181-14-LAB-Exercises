import 'dart:io';
void main(){
  const int speed = 299792558;
  stdout.write("Enter the distance in meters: ");
  String S = stdin.readLineSync()!;
  double distance = double.parse(S);

  double time = speed / distance;
  print("The time it takes light to travel $distance meters is $time Seconds");
}