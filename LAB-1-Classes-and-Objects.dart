class Person{
  String name;
  int age;
  String address;

  Person( this.name, this.age, this.address);
}

void main(){
  Person me = Person ("Mahlet", 21, "Bethel");
  me.age = 22;
  me.address = "Lideta";
}

