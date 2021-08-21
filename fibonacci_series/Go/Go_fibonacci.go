package main

import "fmt"

func recursiveFibonacci(n int) int {
	if n <= 1 {
		return n
	}
	return recursiveFibonacci(n-1) + recursiveFibonacci(n-2)
}

// example call: go run Go_fibonacci.go
func main() {
	fmt.Print("Enter the number of elements: ")

	var fibNum int
	fmt.Scanf("%d", &fibNum)

	fmt.Print("Fibonacci Series:\n")
	for i := 0; i < fibNum; i++ {
		fmt.Println(recursiveFibonacci(i))
	}
}
