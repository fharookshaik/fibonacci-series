import java.math.BigInteger
import java.util.Scanner

/**
 * Main function that asks for the number of members to show and print them.
 */
fun main() {
    print("Enter a number of members in series:")
    val input = Scanner(System.`in`)
    val number = input.nextInt()
    var count = 0;
    var a = BigInteger("0")
    var b = BigInteger("1")

    println(a)
    println(b)

    while(count < number - 2) {
        val aux = a.add(b)
        println(aux)
        a = b
        b = aux
        count++
    }
}
