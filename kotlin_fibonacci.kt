import java.math.BigInteger
import java.util.Scanner


fun main(args: Array<String>) {
    print("Enter a number of members in series:")
    val input = Scanner(System.`in`)
    val number = input.nextInt()
    var count = 0;
    var a = BigInteger("0")
    var b = BigInteger("1")

    println(a)

    while(count < number - 2) {
        val aux = a.add(b)
        println(aux)
        b = aux
        a = b
        count++
    }
}
