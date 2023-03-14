//2. Create a class named “Student” with properties such as name, age, major, and GPA. Add getter and setter methods for each property. Also, add a method to calculate the student’s grade level based on their age.

class Student {
  String _name;
  int _age;
  String _major;
  double _gpa;
  Student(this._name, this._age, this._major, this._gpa);

  set name(String name) {
    _name = name;
  }

  get alpha {
    print("Name: ${_name.toUpperCase()} ");
    return _name;
  }

  set age(int age) {
    _age = age;
  }

  get years {
    print("Age: $_age");
    return _age;
  }

  set major(String major) {
    _major = major;
  }

  get program {
    print("Major: ${_major.toUpperCase()}");
    return _major;
  }

  set gpa(double gpa) {
    _gpa = gpa;
  }

  get grade {
    print("Grade: $_gpa");
    return _gpa;
  }

  void calculateGrade() {
    if (_age < 10) {
      print("You are in Grade 1-4");
    } else if (_age < 15) {
      print("You are in Grade 5-8");
    } else if (_age < 18) {
      print("You are in Grade 9-12");
    } else {
      print("You are in University");
    }
  }
}

void main() {
  Student student = Student("Muhammad Owais", 20, "Bsse", 3.33);
  student.alpha;
  student.years;
  student.program;
  student.grade;
  student.calculateGrade();
  student._name = "Hammad Nadeem";
  student._age = 15;
  student._major = "BSse";
  student._gpa = 3.57;
  student.alpha;
  student.years;
  student.program;
  student.grade;
  student.calculateGrade();
}
