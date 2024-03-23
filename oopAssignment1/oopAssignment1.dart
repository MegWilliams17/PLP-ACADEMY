import 'dart:io';

// Object-oriented model using classes and inheritance
class Animal {
  String name;
  String species;

  Animal(this.name, this.species);

  void makeSound() {
    print('The $name, a $species, makes a sound.');
  }
}

// Class implementing an interface
abstract class Movable {
  void move();
}

class Bird extends Animal implements Movable {
  Bird(String name) : super(name, 'bird');

  @override
  void move() {
    print('The $name flies gracefully through the air.');
  }

  // Override method
  @override
  void makeSound() {
    print('The $name, a $species, chirps happily.');
  }
}

// Class initialized with data from a file
class Zoo {
  List<Animal> animals = [];

  // Load animals from a file
  Zoo(String filename) {
    File file = File(filename);
    List<String> lines = file.readAsLinesSync();
    for (String line in lines) {
      List<String> parts = line.split(',');
      if (parts.length == 2) {
        String name = parts[0];
        String species = parts[1];
        animals.add(Animal(name, species));
      }
    }
  }

  // Method to display animals
  void displayAnimals() {
    print('Zoo Animals:');
    for (Animal animal in animals) {
      print('${animal.name}, a ${animal.species}');
    }
  }
}

void main() {
  // Example of a loop
  for (int i = 0; i < 3; i++) {
    print('Welcome to the Zoo!');
  }

  // Creating instances of classes
  Bird eagle = Bird('Eagle');
  eagle.makeSound();
  eagle.move();

  // Initializing Zoo with data from a file
  Zoo myZoo = Zoo('oopAssignment1/zoo_data.txt');
  myZoo.displayAnimals();
}
