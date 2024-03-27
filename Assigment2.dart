// Task 1
double addTwo(double num1, double num2) {
  return num1 + num2;
}

// Task 2
double subtractTwo(double num1, double num2) => num1 - num2;

// Task 3
double multiplyTwo(double num1, double num2) {
  return num1 * num2;
}

// Task 4
double divideTwo(double num1, double num2) {
  if (num2 == 0) {
    throw ArgumentError('Cannot divide by zero');
  }
  return num1 / num2;
}

// Task 5
int stringLength(String inputString) {
  return inputString.length;
}

// Task 6
dynamic getFirstElement(List<dynamic> list) {
  if (list.isEmpty) {
    return null;
  }
  return list[0];
}

void main() {
  // Testing the functions
  print('Task 1: Add Two Numbers');
  print('Result: ${addTwo(8, 5)}');

  print('\nTask 2: Subtract Two Numbers');
  print('Result: ${subtractTwo(10, 3)}');

  print('\nTask 3: Multiply Two Numbers');
  print('Result: ${multiplyTwo(5, 6)}');

  print('\nTask 4: Divide Two Numbers');
  try {
    print('Result: ${divideTwo(12, 3)}');
    print('Result: ${divideTwo(12, 0)}'); // Division by zero error
  } catch (e) {
    print('Error: $e');
  }

  print('\nTask 5: String Length');
  print('Result: ${stringLength("Hello Colleagues")}');

  print('\nTask 6: Get First Element of a List');
  print('Result: ${getFirstElement([5, 2, 4, 1, 3])}');
}
