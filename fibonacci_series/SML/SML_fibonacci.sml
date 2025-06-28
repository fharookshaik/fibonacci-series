local
 fun fibonacci (i:IntInf.int, j:IntInf.int, n:IntInf.int ) = 
  let 
   fun fib (a,b,0) = []
	| fib (a,b,count) = a::fib(b,a+b,count-1)
  in
    fib (i,j,n)
  end

 fun printList [] = ()
  | printList (x::[]) = print (IntInf.toString x ^ "\n")
  | printList (x::xs) = (print (IntInf.toString x ^ ", "); printList xs)

 fun main () = 
  let 
   val _ = print "Enter the number of Fibonacci numbers to be printed: "
   val input = TextIO.inputLine TextIO.stdIn
   val n = valOf (IntInf.fromString (valOf input))
   
   val result = fibonacci (IntInf.fromInt 1,IntInf.fromInt 1,n)
   val _ = printList result
  in 
   ()
  end
in
 val _ = main()
end