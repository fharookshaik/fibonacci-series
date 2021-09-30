// Imprting Input module
import 'dart:io';


// Main Function
void main() {

  print("\nEnter total fibonacci numbers required : ") ;
  int? total = int.parse(stdin.readLineSync()!);
  fibonacci(total) ;
}


// Fibonacci Function
void fibonacci(num){

    // Defining variables

    int a = 0; // Adding the first number
    int b = 1 ; // Adding the second number
    int c = 0; // Initialising the sum of the numbers (To be used later)
    int counter = 0; // Creating a counter so that the series can end at a specific number of terms


    // Fibonacci Execution

    print("\nNumbers : \n") ;

    while (counter < num){

      print(c) ;

      a = b ;
      b = c ;

      c = a + b ;

      counter += 1 ;

    }
  }
