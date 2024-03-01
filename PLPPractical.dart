void main() {
  // Integer: represents whole numbers
  int num1 = 100;

  // Double: represents decimal numbers
  double num2 = 15.56;
  num num3 = 30;
  num num4 = 50.4;

  // For  sum
  num sum = num1 + num2 + num3 + num4;

  //printing info
  print("Num 1 is $num1");
  print("Sum is $sum");

  // String: represents a sequence of characters
  String firstName = "Ekemini";
  String address = "Aluu, Rivers State";

  //Printing values
  print("My Name is $firstName and my address is $address");

  //Booleans: represents a true or false statement
  bool isMarried = false;
  print("Married Status: $isMarried");

  // List: represents an ordered collection of objects
  List<String> friends = ["Mary", "Oscar", "Peter", "Idara"];
  print('Friends: $friends');

  // Map: represents a collection of key-value pairs
  Map<String, int> ages = {'Oscar': 36, 'Mark': 18, 'Zinny': 30};
  print("Ages of students: $ages");

  //Runes: an integer representing a sequence of Unicode code points. Unicode defines a unique numeric value for each letter, digit, and symbol used in all the world's writing systems.

  String runesString =
      "Runes in Dart:  \u{1F600},  \u{1F4BB},  \u{1F605},  \u{2600},  \u{2764}\u{1F499}\u{1F49A},  \u{2708},  \u{1F64B},  \u{1F680},  \u{1F914}, \u{1F60E},  \u{1F44B}";
  print(runesString);
}
