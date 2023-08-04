import java.math.BigInteger
import java.util.Scanner

fun recursiveFibonacci(n: Int, a: BigInteger, b: BigInteger, count: Int) {
    if (count < n) {
        val aux = a.add(b)
        println(aux)
        recursiveFibonacci(n, b, aux, count + 1)
    }
}

fun main() {
    print("Enter a number of members in series:")
    val input = Scanner(System.`in`)
    val number = input.nextInt()
    
    val a = BigInteger("0")
    val b = BigInteger("1")
    
    println(a)
    println(b)
    
    recursiveFibonacci(number - 2, a, b, 0)
}
