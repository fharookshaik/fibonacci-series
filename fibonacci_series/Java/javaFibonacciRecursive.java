package com.company;

import java.util.Scanner;

public class JavaFibonacciRecursive {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int noOfTerms;

        System.out.print("Enter the no. of terms of the Fibonacci series, that you need: ");

        // Type check (In case, the user enters double, char, string etc.)
        if(scanner.hasNextInt()) {
            noOfTerms = scanner.nextInt();
        } else {
            System.out.println("INVALID ARGUMENT (ARGUMENT NEEDS TO BE INTEGER)");
            return;
        }

        // Input value check (In case, the user enter an input value < 1, which is not possible)
        if(noOfTerms < 1) {
            System.out.println("INVALID NUMBER OF TERMS (ARGUMENT CANNOT BE LESS THAN 1)");
            return;
        }

        // Printing the Fibonacci Series
        for(int i=1; i<=noOfTerms; i++) {
            System.out.println(fibonacciSeries(i));
        }
    }

    // Method for finding the nth Fibonacci Number
    public static long fibonacciSeries(int n) {
        if(n == 1)
            return 0;
        if (n == 2)
            return 1;

        return fibonacciSeries(n-1) + fibonacciSeries(n-2);
    }
}