package main

import (
	"fmt"
	"time"
)

func iterativeFibonacci(n int) int {

	if n <= 1 {
		return n
	}
	fib_min_2 := 0
	fib_min_1 := 1
	fib := 0
	for i := 2; i <= n; i++ {
		fib = fib_min_1 + fib_min_2
		fib_min_2 = fib_min_1
		fib_min_1 = fib
	}
	return fib

}

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
		nr := time.Now()
		fr := recursiveFibonacci(i)
		tr := time.Since(nr)

		ni := time.Now()
		fi := iterativeFibonacci(i)
		ti := time.Since(ni)

		fmt.Printf("fib(%d) == %d (%s): %d (%s) \n", i, fr, tr, fi, ti)
	}
}
