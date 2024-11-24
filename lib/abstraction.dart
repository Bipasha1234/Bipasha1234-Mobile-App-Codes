// Abstract class
abstract class Animal {
  // Abstract method (no body)
  void makeSound();

  // Concrete method (with body)
  void eat() {
    print("Eating...");
  }
}

// Subclass of Animal
class Dog extends Animal {
  // Providing implementation for the abstract method
  @override
  void makeSound() {
    print("Bark");
  }
}

// Another subclass of Animal
class Cat extends Animal {
  // Providing implementation for the abstract method
  @override
  void makeSound() {
    print("Meow");
  }
}

void main() {
  // Cannot create an instance of an abstract class
  // Animal animal = Animal(); // This will give an error

  // Create instances of the subclasses
  Animal dog = Dog();
  dog.makeSound(); // Output: Bark
  dog.eat();       // Output: Eating...

  Animal cat = Cat();
  cat.makeSound(); // Output: Meow
  cat.eat();       // Output: Eating...
}
