package main

//importing fmt package for formatted I/O.
import "fmt"

//fib array stores previously calculated values of the series
//Time Complexity: O(N) 
func fibonnaci(x int) []int {
	fib := []int{0,1}
	for i := 2; i <= x; i++ {
		t := fib[i-1] + fib[i-2]
		fib = append(fib, t)
	}
	return fib
}
//example: go run Fibonacci_loop.go
func main() {
	var num int
	//C style I/O using scanf and printf
	fmt.Printf("Enter a number: \n")
	fmt.Scanf("%d",&num)
	//calculating the fibonnaci number
	res := fibonnaci(num)
	fmt.Println(res)
}