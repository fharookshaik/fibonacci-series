import Foundation
import Glibc

func fibonacci(num: Int) -> Int{
   var a = 0
   var b = 1

   var nR = 0
   for _ in 0..<num{
      nR = a 
      a = b
      b = nR + b
   }
   return a
}

var val = Int(readLine()!)!
print("Following is the Fibonacci series from 0:")

for j in 0...(val-1){
   let output = fibonacci(num: j)
   print(output)
} 