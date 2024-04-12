enum Color {
  red,
  green,
  blue,
  yellow,
}

void main1() {
  //Accessing enum values
  print(Color.red); // Output: Color.red

  //Converting enum to string
  String colorString = Color.green.toString();
  print(colorString); // Output: Color.green

  //Accessing enum values using index
  print(Color.values[2]); // Output: Color.blue

  //Iterating through enum values
  for (var color in Color.values) {
    print(color);
  }
}

enum Days_of_the_Week {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

void main() {
  // Accessing enum values
  print(Days_of_the_Week.Monday); // Output: Days_of_the_Week.Monday

  // Converting enum to string
  String Second_day_of_the_week =
      (Days_of_the_Week.Tuesday.toString().split('.').last);
  print(Second_day_of_the_week); // Days_of_the_Week.Tuesday

  // Accessing enum values using index
  print(Days_of_the_Week.values[2]
      .toString()
      .split('.')
      .last); // Output: Days_of_the_Week.Wednesday

  // Iterating through enum values
  for (var Days in Days_of_the_Week.values) {
    print(Days); // Output: Days);
  }
}

enum Planet {
  mercury,
  venus,
  earth,
  mars,
  jupiter,
  saturn,
  uranus,
  neptune,
  pluto,
  ceres,
  eris,
}

void main2() {
  Planet myFavoritePlanet = Planet.jupiter;

  // Converting enum to string
  String planetString = myFavoritePlanet.toString();
  print('My favorite planet is: $planetString');

  switch (myFavoritePlanet) {
    case Planet.mercury:
      print("Mercury is the closest planet to the sun.");
      break;
    case Planet.venus:
      print("Venus is the hottest planet in our solar system.");
      break;
    case Planet.earth:
      print("Earth is the only planet known to support life.");
      break;
    case Planet.mars:
      print("Mars is often called the Red Planet.");
      break;
    case Planet.jupiter:
      print("Jupiter is the largest planet in our solar system.");
      break;
    case Planet.saturn:
      print("Saturn is known for its beautiful rings.");
      break;
    case Planet.uranus:
      print("Uranus is tilted on its side.");
      break;
    case Planet.neptune:
      print("Neptune is the furthest planet from the sun.");
      break;
    case Planet.pluto:
      print("Pluto used to be considered the ninth planet.");
      break;
    case Planet.ceres:
      print("Ceres is the largest object in the asteroid belt.");
      break;
    case Planet.eris:
      print("Eris is a dwarf planet in the outer solar system.");
      break;
  }
}

enum weekDays {
  //constant values
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

void main4() {
  //access enum values
  print(weekDays.Monday.toString().split('.').last);
  for (var weekDay in weekDays.values) {
    print(weekDay.toString().split(".").last);
  }
}
