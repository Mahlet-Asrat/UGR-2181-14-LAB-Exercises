import "dart:io";
void main(){
  
  stdout.write("Enter Your First Number: ");
  String S = stdin.readLineSync()!;
  double f_no = double.parse(S);

  stdout.write("Enter the opernad: ");
  String operand = stdin.readLineSync()!;

  stdout.write("Enter Your Second Number: ");
  String L = stdin.readLineSync()!;
  double s_no = double.parse(L);
  
  switch (operand){
    case '+':
    print(f_no + s_no);
    break;
    case '-':
    print(f_no - s_no);
    break;
    case '*':
    print(f_no * s_no);
    break;
    case '/':
    print(f_no / s_no);
    break;
  }
}