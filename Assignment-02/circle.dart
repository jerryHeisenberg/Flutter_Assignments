//1. Create a class named “Circle” with properties such as radius. Add getter and setter methods for the radius property. Also, add a method to calculate the circumference of the circle.
import 'dart:math';

class Circle {
  double _radius;

  Circle(this._radius);

  void set rad(double newRadius) {
    if (newRadius < 0) {
      print("Value is Invalid!!");
    }
    _radius = newRadius;
  }

  double get circumference {
    double result = 2 * pi * _radius;
    print("Circumference of a Radius is : ${result.toStringAsFixed(2)}");
    return result;
  }
}

void main() {
  Circle circle = Circle(30);
  circle.circumference;
  circle.rad = -6;
  circle.circumference;
}
