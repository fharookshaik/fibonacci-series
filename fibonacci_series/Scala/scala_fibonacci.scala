object Main extends App {
  println("How many fibonacci terms should be printed?")

  val n = scala.io.StdIn.readInt()

  println("Results:");

  var x1 = BigInt(0);
  var x2 = BigInt(1);
  var x3 = BigInt(0);
  for (i <- 0 to n - 1) {
    i match {
      case 0 => println(x1);
      case 1 => println(x2);
      case _ => {
        x3 = x1 + x2;
        x1 = x2;
        x2 = x3;
        println(x3);
      }
    }
  }
}
