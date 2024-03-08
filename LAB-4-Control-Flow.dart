import "dart:io";
void main(){
  stdout.write("Enter Your Grade: ");
  String L = stdin.readLineSync()!;
  double grade = double.parse(L);

    switch (grade){
    case >=90 && <=100:
      print ("Your Grade is A+");
      break;
    case >=80 && <=89:
      print ("Your Grade is A");
      break;
    case >=70 && <=79:
      print ("Your Grade is B");;
      break;
    case >=60 && <=69:
      print ("Your Grade is C");
      break;
    case >=50 && <=59:
      print ("Your Grade is D");
      break;
    default:
     print ("Your Grade is F");
  }
}