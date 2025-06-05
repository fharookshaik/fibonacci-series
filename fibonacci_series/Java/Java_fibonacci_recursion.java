import java.util.Scanner;

public class Java_fibonacci_recursion {
    // Recursive function to print Fibonacci sequence starting from third term
    public static void printFibonnacci(int numOfTerms, int first, int second){
        int nextTerm = first + second;
        // Why: We use '> 3' because the first two terms (0 and 1) are already printed in main,
        // so we only need to recurse for the remaining terms beyond the third
        if (numOfTerms > 3){
            System.out.print(nextTerm + ", ");
            numOfTerms--;
            first = second;
            second = nextTerm;
            printFibonnacci(numOfTerms, first, second); //recursively generate next term in sequence
        } else{
            System.out.print(nextTerm + ".");
        }
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int numOfTerms = input.nextInt();

        if (numOfTerms == 1){
            System.out.println("0.");
        } else if (numOfTerms == 2){
            System.out.println("0, 1.");
        } else if (numOfTerms > 2) {
            System.out.print("0, 1, ");
            printFibonnacci(numOfTerms, 0, 1);
        }
    }
    
    
}
