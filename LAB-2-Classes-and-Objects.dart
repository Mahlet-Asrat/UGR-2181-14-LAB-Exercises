class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks) : super(name, age, address);

  int TotalMark() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }
   
  double calculateAverageMarks() {
    int len = marks.length;
    int total = TotalMark();
    double average = total / len;
    return average;
  }
}

void main() {
  Student student1 = Student("Abebe", 18, "Gondar", 1, [80, 90, 85, 95, 70]);
  int totalMarks = student1.TotalMark();
  double averageMarks = student1.calculateAverageMarks();
  
  print("Total Marks: $totalMarks");
  print("Average Marks: $averageMarks");
}