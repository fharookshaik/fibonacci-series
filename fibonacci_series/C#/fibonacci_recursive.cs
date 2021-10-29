using System;
public static class FibonacciRecursive{

public static void Main(){
    Console.Write("Enter the number of terms in the fibonacci sequence : ");
    int len= Convert.ToInt32(Console.ReadLine());
    Fibonacci_Recursive(len);
}    

public static void Fibonacci_Recursive(int len )  
{  
   Fibonacci_Rec_Temp(0, 1, 1, len);  
}  
private static void Fibonacci_Rec_Temp(int a, int b, int counter, int len)  
{  
    if (counter <= len)  
    {  
        Console.Write("{0} ", a);  
        Fibonacci_Rec_Temp(b, a + b, counter+1, len);  
    }  
}  
}
