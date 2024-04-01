// 1. Create a function that takes two numbers as input and returns the sum of those numbers.
int sum(int a, int b) {
  return a + b;
}

// 2. Write a program that uses a for loop to print out the numbers from 1 to 10.
void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// 3. Create a program that uses a switch statement to check for different string values and output a response based on the value.
void switchExample(String value) {
  switch (value) {
    case 'dart':
      print('Dart is awesome!');
      break;
    case 'flutter':
      print('Flutter is amazing!');
      break;
    default:
      print('Unknown value');
  }
}

// 4. Create a program that uses a while loop to print out the numbers from 20 to 10.
void printNumbersDescending() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// 5. Create a program that uses an if-else statement to check if a number is even or odd and output the result.
void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}

// 6. Create a program that takes a list of numbers as input and outputs the largest number in the list.
int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

// 7. Write a program that uses a try-catch block to catch an exception and output an error message.
void divide(int a, int b) {
  try {
    print(a ~/ b);
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  // Task 1
  print('Sum: ${sum(5, 3)}');

  // Task 2
  print('Numbers 1 to 10:');
  printNumbers();

  // Task 3
  print('Switch Example:');
  switchExample('dart');
  switchExample('flutter');
  switchExample('java');

  // Task 4
  print('Numbers 20 to 10:');
  printNumbersDescending();

  // Task 5
  print('Check Even/Odd:');
  checkEvenOdd(7);
  checkEvenOdd(10);

  // Task 6
  print('Largest Number in List: ${findLargest([5, 3, 9, 2, 8])}');

  // Task 7
  print('Division:');
  divide(10, 2);
  divide(10, 0);
}
