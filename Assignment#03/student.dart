class Person {
  String firstName;
  String lastName;
  

  Person(this.firstName,this.lastName);
  void fullName() {
    print("The fullname is $firstName $lastName.");
  }
}

class Student extends Person {
  String major;
  
  Student(String firstName, String lastName,this.major) : super(firstName,lastName);

  void fullName() {
    print("The fullname of the student is $firstName $lastName, and doing major in $major.");
  }
}

void main() {
  Student student = Student("Hammad","Nadeem","BSSE");
  student.fullName();
  
}
