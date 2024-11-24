// Parent class (superclass)
class Vehicle {
  String brand;

  Vehicle(this.brand);

  void drive() {
    print("$brand is moving");
  }
}

// Child class (subclass) inheriting from Vehicle
class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, this.numberOfDoors) : super(brand);

  void showDetails() {
    print("Car: $brand, Doors: $numberOfDoors");
  }

  // Overriding the drive method
  @override
  void drive() {
    print("$brand car is driving smoothly");
  }
}

// Another subclass inheriting from Vehicle
class Bike extends Vehicle {
  bool hasCarrier;

  Bike(String brand, this.hasCarrier) : super(brand);

  void showDetails() {
    print("Bike: $brand, Has carrier: $hasCarrier");
  }
}

void main() {
  // Create a Car object
  Car car = Car("Toyota", 4);
  car.drive();         // Output: Toyota car is driving smoothly
  car.showDetails();   // Output: Car: Toyota, Doors: 4

  // Create a Bike object
  Bike bike = Bike("Yamaha", true);
  bike.drive();        // Output: Yamaha is moving
  bike.showDetails();  // Output: Bike: Yamaha, Has carrier: true
}
