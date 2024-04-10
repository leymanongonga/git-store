import 'dart:io'; // import the 'dart:io' library to use inpuut and output functionality

void main() {//define the main function, the starting point of the program.
  // Display welcome message
  print('Welcome to the Calculator App!');
  
  // Prompt user for input
  print('Enter the first number:'); // prompt the user to enter the first number.
  double num1 = double.parse(stdin.readLineSync()!); //read the user's input as the first number
  
  print('Enter the second number:'); // prompt the user to enter the second number.
  double num2 = double.parse(stdin.readLineSync()!); //read the user's input as the second number
  
  // Prompt user for operation choice
  print('Choose operation:'); // prompt the user to select mathematical operation.
  print('1. Addition'); // display option for addition.
  print('2. Subtraction'); // display option for substraction.
  print('3. Multiplication'); // display option for multiplication.
  print('4. Division'); // display option for division.
  
  // Get operation choice
  int choice = int.parse(stdin.readLineSync()!); // read the user's choice of operation.
  
  double result; // declare a variable to store the result of the chosen operation.
  
  // Perform operation based on user choice
  switch (choice) { // begin a switch statement based on the user's choice
    case 1: // case 1: addition
      result = num1 + num2;// perform addition
      print('Result: $num1 + $num2 = $result'); // display the additional result.
      break;// exit the switch statement 

    case 2: // case 2: substraction
      result = num1 - num2;// perform substraction
      print('Result: $num1 - $num2 = $result'); // display the substraction result.
      break;// exit the switch statement

    case 3: // case 3: multiplication
      result = num1 * num2;// perform multiplication
      print('Result: $num1 * $num2 = $result'); // display the multiplication result.
      break;// exit the switch statement

    case 4: // case 4: division
      if (num2 == 0) {// check division by zero
        print('Error: Division by zero'); // display the division result.
      } else {
        print("error:division by zero is not allowed");// display an error message for division by
        result = num1 / num2;// perfoem the division if the denominator is not zero
        print('Result: $num1 / $num2 = $result');// display the division result.
      }
      break;// exit the switch statement

    default:// default case for an invalid choice
      print("Invalid choice.please enter a number between 1 and 4.");// display an error message.
  }
}
