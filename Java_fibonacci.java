import java.util.Scanner;
import java.math.BigInteger;

public class Java_fibonacci {

	public static void main(String[] args) {
         Scanner sc=new Scanner(System.in);
         System.out.println("Enter a number of members in series: ");
         int n=sc.nextInt();
         int count=0;
      
        BigInteger a=new BigInteger("0");
        BigInteger b=new BigInteger("1");
        System.out.print(a+"\n "+b+"\n ");
        while(count<(n-2))
         {
            BigInteger c=new BigInteger(a.add(b).toString());
            System.out.print(c +"\n ");
            a=b;
            b=c;
            count++;
         }
	}

}
