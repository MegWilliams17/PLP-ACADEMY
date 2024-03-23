// Defining a base class Human
class Human {
  void printSkin_Color() {
    print('My Skin color is: Undefined');
  }
}

// Defining the subclass WhiteHuman
class White_Human extends Human {
  @override
  void printSkin_Color() {
    print('My Skin color is: White');
  }
}

// Defining the subclass BlackHuman
class Black_Human extends Human {
  @override
  void printSkin_Color() {
    print('My Skin color is: Black');
  }
}

void main() {
  // Creating instances of WhiteHuman and BlackHuman
  White_Human whiteHuman = White_Human();
  Black_Human blackHuman = Black_Human();

  // Demonstrate polymorphism
  print('White human:');
  whiteHuman.printSkin_Color();

  print('Black human:');
  blackHuman.printSkin_Color();
}
