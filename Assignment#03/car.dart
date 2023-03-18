class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand,this.model,this.year);
  void drive() {
    print("$model is being driven");
  }
}

class Car extends Vehicle {
  int numDoors;
  
  Car(String brand, String model,int year, this.numDoors) : super(brand,model,year);

  void drive() {
    print("$model of brand $brand has $numDoors doors and was made in the year $year.");
  }
}

void main() {
  Car car = Car("KIA","Stonic",2022,4);
  car.drive();
  
}
