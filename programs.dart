import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Base class
class LivingBeing {
  String name;

  LivingBeing(this.name);

  void breathe() {
    print('$name is breathing');
  }
}

// Subclass that implements an interface and overrides a method
class Dog extends LivingBeing implements Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name barks');
  }

  void wagTail() {
    print('$name is wagging tail');
  }
}

void main() {
  // Create an instance of Dog initialized with data from a file
  var dog = Dog.fromFile('dog_data.txt');
  dog.makeSound();
  dog.wagTail();

  // Demonstrate the use of a loop
  for (int i = 0; i < 3; i++) {
    print('Count: $i');
  }
}

extension DogFileReading on Dog {
  // Method to initialize Dog instance with data from a file
  static Dog fromFile(String fileName) {
    var file = File(fileName);
    var name = file.readAsStringSync().trim();
    return Dog(name);
  }
}
