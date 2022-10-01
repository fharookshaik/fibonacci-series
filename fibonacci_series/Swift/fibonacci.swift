import Foundation
import Glibc

func fibonacciSeries(num: Int) -> Int{
   var n1 = 0
   var n2 = 1

   var nR = 0
   for _ in 0..<num{
      nR = n1 
      n1 = n2
      n2 = nR + n2
   }
   return n1
}

var val = 10
print("Following is the Fibonacci series:")

// Iterate for every number stating from 0 to val
for j in 0...val{
   let output = fibonacciSeries(num: j)
   print(output)
} 
