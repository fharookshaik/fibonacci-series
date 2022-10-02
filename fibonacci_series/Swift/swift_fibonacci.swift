import Foundation
import Glibc

func fibonacci(num: Int) -> Int{
   var num1 = 0
   var num2 = 1
   var numR = 0
   for _ in 0..<num{
      numR = num1
      num1 = num2
      num2 = numR + num2
   }
   return num1
}
var val = Int(readLine()!)!
print("Following is the Fibonacci series from 0:")
for j in 0...(val-1){
   let output = fibonacci(num: j)
   print(output)
}
