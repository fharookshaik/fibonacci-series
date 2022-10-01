import java.util.Scanner;


class FibonacciExampleJava {
    public static void main(String[] args) {
        // create an instance of the Scanner class to take an input from the user
        Scanner sc = new Scanner(System.in);

        // show a prompt to the user to input the number of terms in the series
        System.out.println("How many terms would you like in the series?: ");

        // take the input
        int numberOfTerms = sc.nextInt();

        for(int i = 0; i <= numberOfTerms; i++ )
            System.out.println((i + 1)+"-   " + fibonacci(i));
    }

    // formula to find the nth fibonacci number = 1/sqrt(5) ( ( (1 + sqrt(5) ) / 2)^n - ( (1 - sqrt(5) ) / 2)^n  )
    // You get this formula after solving the recurrence relation equation of fibonacci series
    static long fibonacci(int n)
    {
        return (long)( (Math.pow(((1 + Math.sqrt(5)) / 2), n)  - (Math.pow((1 - Math.sqrt(5))  / 2,n)) ) / Math.sqrt(5));
    }
}
