import java.util.Scanner;
import java.math.BigInteger;

class FibonacciExampleJava {
    public static void main(String[] args) {
        // create an instance of the Scanner class to take an input from the user
        Scanner scanner = new Scanner(System.in);

        // show a prompt to the user to input the number of terms in the series
        System.out.println("How many terms would you like in the series?: ");

        // take the input, using BigInteger to virtually store very large integer numbers
        int numberOfTerms = scanner.nextInt();

        // create the first term and the second term of the series
        BigInteger firstTerm = BigInteger.ZERO;
        BigInteger secondTerm = BigInteger.ONE;

        // print the first two terms of the series, using printf for formatting
        System.out.printf("%d, %d, ", firstTerm, secondTerm);

        // calculate the next terms in the series using a loop
        int termsPrinted = 2;
        while (termsPrinted < numberOfTerms) {
            BigInteger nextTerm = firstTerm.add(secondTerm);
            // print the next term in the series
            System.out.printf("%d%s", nextTerm, (termsPrinted != numberOfTerms - 1 ? ", " : "."));
            // update the firstTerm and the secondTerm variables
            firstTerm = secondTerm;
            secondTerm = nextTerm;
            // update the number of terms printed in the series
            termsPrinted++;
        }
    }
}
