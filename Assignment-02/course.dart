//4. Create a class named “Course” with properties such as name, code, instructor, and credits. Add getter and setter methods for each property. Also, add a method to calculate the total cost of the course based on the number of credits and the cost per credit.

class Course {
  String _name;
  String _code;
  String _instructor;
  int _credit;

  Course(this._name, this._code, this._instructor, this._credit);

  set name(String name) {
    _name = name;
  }

  get alpha {
    print("Course Name: $_name");
    return _name;
  }

  set code(String code) {
    _code = code;
  }

  get courseId {
    print("Course Code: $_code");
    return _code;
  }

  set instructor(String instructor) {
    _instructor = instructor;
  }

  get teacher {
    print("Instructor Name: $_instructor");
    return _instructor;
  }

  set credit(int credit) {
    _credit = credit;
  }

  get creditHrs {
    print("Course Credits: $_credit");
    return _credit;
  }

  void courseCost() {
    int creditPrice = 5000;
    int courseCost = _credit * creditPrice;
    print("Your $_name total cost is: Rs:$courseCost ");
  }
}

void main() {
  Course course1 = Course(
      "Aritifical Intelligence", "SE30701", "Dr.AArij Mahmood Hussain", 3);
  course1.alpha;
  course1.courseId;
  course1.teacher;
  course1.creditHrs;
  course1.courseCost();
  print("\n");
  Course course2 = Course(
      "Data Structures And Algorithms", "SEN23202", "Dr.Fahad Najeeb", 3);
  course2.alpha;
  course2.courseId;
  course2.teacher;
  course2.creditHrs;
  course2.courseCost();
}
