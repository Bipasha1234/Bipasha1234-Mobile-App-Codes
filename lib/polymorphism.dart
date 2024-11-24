// Base class (superclass)
class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

// Subclass 1
class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

// Subclass 2
class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}

// Subclass 3
class Bird extends Animal {
  @override
  void makeSound() {
    print("Bird chirps");
  }
}

void main() {
  // Using polymorphism
  List<Animal> animals = [Dog(), Cat(), Bird()];

  // Iterating over the list and calling the same method
  for (var animal in animals) {
    animal.makeSound();
  }
}
