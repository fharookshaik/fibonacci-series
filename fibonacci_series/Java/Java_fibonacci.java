import java.math.BigInteger;
import java.util.Scanner;

class FibonacciExampleJava {
    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            if (!scanner.hasNextInt()) {
                System.exit(2);
            }

            int n = scanner.nextInt();
            if (n < 0) {
                System.exit(2);
            }

            BigInteger a = BigInteger.ZERO;
            BigInteger b = BigInteger.ONE;
            StringBuilder output = new StringBuilder();

            for (int i = 0; i < n; i++) {
                if (i > 0) {
                    output.append(' ');
                }

                output.append(a);

                BigInteger next = a.add(b);
                a = b;
                b = next;
            }

            System.out.println(output);
        }
    }
}
