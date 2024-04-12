// Creating a function that adds two numbers

int add_numbers(int a, int b) {
  return a + b;
}

// Creating a program  using a for loop to print numbers from 1 to 10

void Display_Numbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Creating a program using a switch statement to check for different string values and output a response based on the value.

void checkForString(String value) {
  switch (value) {
    case "Dart Programming":
      print('It is been taught with Flutter.');
      break;
    case "Python Programming":
      print('It is been taught with Django framework.');
      break;
    default:
      print('Unknown Programming Type.');
  }
}

// Creating a program using a while loop to print numbers from 20 to 10

void printReverseNumbers() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// Creating a program using an if-else statement to check if a number is even or odd and output the results.

void checkEvenoddNumbers(int num) {
  if (num % 2 == 0) {
    print('$num is even.');
  } else {
    print('$num is odd.');
  }
}

// Creating a  program to find the largest number in a list of numbers.

int find_largest_number(List<int> numbers) {
  int largest_number = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest_number) {
      largest_number = numbers[i];
    }
  }
  return largest_number;
}

// Creating a program to catch an exception and ouput an error message using a try-catch block.

void customDivision(int a, int b) {
  try {
    if (b > a) {
      throw Exception(
          'The second number can not be greater than the first number.');
    }
    print('Result: ${a ~/ b}');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  // Testing the sum function
  print('Sum: ${add_numbers(5, 3)}');

  // Testing the program to print numbers from 1 to 10
  Display_Numbers();

  // Testing the switch statement
  checkForString('Dart Programming');
  checkForString('Python Programming');
  checkForString('C++ Programming');

  // Testing the while loop program
  printReverseNumbers();

  // Testing if a number is even or odd
  checkEvenoddNumbers(13);
  checkEvenoddNumbers(8);

  // Testing the find largest number program
  print('Largest number: ${find_largest_number([15, 2, 8, 16, 20, 7, 3, 5])}');

  // Testing the custom Division program to catch exceptions
  customDivision(25, 5);
  customDivision(2, 5);
  customDivision(5, 0);
}
