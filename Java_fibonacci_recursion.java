import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Java_fibonacci_recursion {

    static List<Integer> s = new ArrayList<>();

    static int fibonacci(int n){
        
        if(n== 1){
            return 0;
        }
        if(n== 2){
            return 1;
        }        

        return fibonacci(n-1) + fibonacci(n-2);

    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the nth term: ");
        int n = sc.nextInt();

        System.out.println(fibonacci(n));
         
        
        sc.close();
    }
    
}
