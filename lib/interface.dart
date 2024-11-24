// Defining a class as an interface
abstract class Animal {
  void makeSound(); // Abstract method
  void eat() {
    print("Animal is eating");
  }
}

// Implementing the interface
class Dog implements Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }

  @override
  void eat() {
    print("Dog is eating");
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }

  @override
  void eat() {
    print("Cat is eating");
  }
}

void main() {
  // Using the interface through objects
  Animal dog = Dog();
  dog.makeSound(); // Output: Dog barks
  dog.eat();       // Output: Dog is eating

  Animal cat = Cat();
  cat.makeSound(); // Output: Cat meows
  cat.eat();       // Output: Cat is eating
}
