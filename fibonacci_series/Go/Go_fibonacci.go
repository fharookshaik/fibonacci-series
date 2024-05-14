package main

import "fmt"

func recursiveFibonacci(n int) int {
	if n <= 1 {
		return n
	}
	return recursiveFibonacci(n-1) + recursiveFibonacci(n-2)
}

func fibonacci(n int) int {
	a, b := 0, 1

	for i := 0; i < n; i++ {
		a, b = b, a+b
	}

	return a
}

// example call: go run Go_fibonacci.go
func main() {
	fmt.Print("Enter the number of elements: ")

	var fibNum int
	fmt.Scanf("%d", &fibNum)

	fmt.Print("Fibonacci Series (Recursive):\n")
	for i := 0; i < fibNum; i++ {
		fmt.Println(recursiveFibonacci(i))
	}

	fmt.Print("Fibonacci Series (Non-Recursive):\n")
	for i := 0; i < fibNum; i++ {
		fmt.Println(fibonacci(i))
	}
}
