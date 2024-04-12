import 'dart:io';
import 'dart:math'; // Import the 'dart:io' library to use input and output functionality.

void main() {
  // Define the main function, the starting point of the program.
  print("Simple Calculator"); // Display "Simple Calculator" on the console.

  print(
      "Enter the first number: "); // Prompt the user to enter the first number.
  double num1 = double.parse(
      stdin.readLineSync()!); // Read the user's input as the first number.

  print(
      "Enter the second number: "); // Prompt the user to enter the second number.
  double num2 = double.parse(
      stdin.readLineSync()!); // Read the user's input as the second number.

  print(
      "Select an operation:"); // Prompt the user to select a mathematical operation.
  print("1. Addition (+)"); // Display option for addition.
  print("2. Subtraction (-)"); // Display option for subtraction.
  print("3. Multiplication (*)"); // Display option for multiplication.
  print("4. Division (/)"); // Display option for division.
  print("5. Square (^2)"); // Display option for squaring a number.
  print(
      "6. Exponentiation (num1 ^ num2)"); // Display option for exponentiation.
  print("7. Sine (sin)"); // Display option for sine.
  print("8. Cosine (cos)"); // Display option for cosine.
  print("9. Tangent (tan)"); // Display option for tangent.
  print("10. Arcsine (arcsin)"); // Display option for arcsine.
  print("11. Arccosine (arccos)"); // Display option for arccosine.
  print("12. Square Root (√)"); //  Display option for square root.
  print("13. Logarithm (log)"); // Display option for logarithm.
  print("14. Cube Root (∛)"); // Display option for cube root.
  print("15. Nth Root (√n)"); // Display option for nth root.
  print("16. Natural Logarithm (ln)"); // Display option for natural logarithm.
  print(
      "17. Base 10 Logarithm (log10)"); // Display option for base 10 logarithm.
  print("18. Absolute Value (|x|)"); // Display option for absolute value.
  print("19. Factorial (x!)"); // Display option for factorial.
  print("20. Modulus (REmainder) (%)"); // Display option for modulus operation.

  int choice =
      int.parse(stdin.readLineSync()!); // Read the user's choice of operation.

  double
      result; // Declare a variable to store the result of the chosen operation.

  switch (choice) {
    // Begin a switch statement based on the user's choice.
    case 1: // Case 1: Addition
      result = num1 + num2; // Perform addition.
      print("Result: $num1 + $num2 = $result"); // Display the addition result.
      break; // Exit the switch statement.

    case 2: // Case 2: Subtraction
      result = num1 - num2; // Perform subtraction.
      print(
          "Result: $num1 - $num2 = $result"); // Display the subtraction result.
      break; // Exit the switch statement.

    case 3: // Case 3: Multiplication
      result = num1 * num2; // Perform multiplication.
      print(
          "Result: $num1 * $num2 = $result"); // Display the multiplication result.
      break; // Exit the switch statement.

    case 4: // Case 4: Division
      if (num2 != 0) {
        // Check for division by zero.
        result =
            num1 / num2; // Perform division if the denominator is not zero.
        print(
            "Result: $num1 / $num2 = $result"); // Display the division result.
      } else {
        print(
            "Error: Division by zero is not allowed."); // Display an error message for division by zero.
      }
      break; // Exit the switch statement.
    case 5: // Case 5: Square (^2)
      result = pow(num1, 2).toDouble(); // Calculate square of num1.
      print("Result: $num1^2 = $result");
      break;
    case 6: // Case 6: Exponentiation
      result = pow(num1, num2).toDouble();
      print("Result: $num1^$num2 = $result");
      break;
    case 7: //  Case 6: sine
      result = sin(num1);
      print("Result: sin($num1) = $result");
      break;
    case 8: // Case 8: Cosine
      result = cos(num1);
      print("Result: cos($num1) = $result");
      break;
    case 9: // Case 9: Tangent
      result = tan(num1);
      print("Result: tan($num1) = $result");
      break;
    case 10: // Case 10: Arcsine
      result = asin(num1);
      print("Result: arcsin($num1) = $result");
      break;
    case 11: // Case 11: Arccosine (arccos)
      result = acos(num1);
      print("Result: arccos($num1) = $result");
      break;
    case 12: // Case 12: Square Root (√)
      if (num1 >= 0) {
        // Check if num1 is non-negative for square root.
        result = sqrt(num1); // Calculate square root of num1.
        print("Result: √$num1 = $result");
      } else {
        print("Error: Square root of a negative number is not allowed.");
      }
      break;
    case 13: // Case 13: Logarithm (log)
      if (num1 > 0 && num2 > 0) {
        // Check if both numbers are positive for logarithm.
        result = log(num1) /
            log(num2); // Calculate logarithm of num1 with base num2.
        print("Result: log$num2($num1) = $result");
      } else {
        print("Error: Logarithm base and number must be positive.");
      }
      break;
    case 14: // Case 14: Cube Root (∛)
      if (num1 >= 0) {
        // Check if num1 is non-negative for cube root.
        result = pow(num1, 1 / 3).toDouble(); // Calculate cube root of num1.
        print("Result: ∛$num1 = $result");
      } else {
        print("Error: Cube root of a negative number is not allowed.");
      }
      break;
    case 15: // Case 15: Nth Root (√n)
      print("Enter the root (n): "); // Prompt the user to enter the root.
      int n = int.parse(stdin.readLineSync()!);
      if (num1 >= 0) {
        // Check if num1 is non-negative for nth root.
        result = pow(num1, 1 / n).toDouble(); // Calculate nth root of num1.
        print("Result: √$n($num1) = $result");
      } else {
        print("Error: Nth root of a negative number is not allowed.");
      }
      break;
    case 16: // Case 16: Natural Logarithm (ln)
      if (num1 > 0) {
        result = log(num1);
        print("Result: ln($num1) = $result");
      } else {
        print("Error: Logarithm of a non-positive number is not allowed.");
      }
      break;

    case 17: // Case 17: Base 10 Logarithm (log10)
      if (num1 > 0) {
        result = log(num1) / log(10);
        print("Result: log10($num1) = $result");
      } else {
        print("Error: Logarithm of a non-positive number is not allowed.");
      }
      break;
    case 18: //Case 18: Absolute Value (|x|)
      result = num1.abs(); // Calculate absolute value of num1.
      print("Result: |$num1| = $result");
      break;
    case 19: // Case 19: Factorial (x!)
      result = factorial(num1); // Calculate factorial of num1.
      print("Result: $num1! = $result");
      break;
    case 20: // Case 20: Modulus (Remainder) (%)
      result =
          num1 % num2; // Calculate modulus (remainder) of num1 divided by num2.
      print("Result: $num1 % $num2 = $result");
      break;

    default: // Default case for an invalid choice.
      print(
          "Invalid choice. Please enter a number between 1 and 4."); // Display an error message.
  }
}

// Function to calculate factorial of a number
double factorial(double n) {
  if (n == 0) {
    return 1;
  }
  double result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}
