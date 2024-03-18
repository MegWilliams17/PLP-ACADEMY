import 'dart:io';

void main() {
  //Get the user's input
  print('Please enter a number: ');
  String? userInput = stdin.readLineSync();

  // Convert the input to a number
  int number = (int.tryParse(userInput ?? '') ?? 0);

  //Check if the number is greater/less than or equal to 10
  String isNumberTen;
  if (number > 10) {
    isNumberTen = 'Your number is greater than 10.';
  } else if (number < 10) {
    isNumberTen = 'Your number is less than 10.';
  } else {
    isNumberTen = 'Your number is equal to 10.';
  }
  print(isNumberTen);
}
