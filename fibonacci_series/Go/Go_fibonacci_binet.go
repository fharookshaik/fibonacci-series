package main

import (
	"fmt"
	"math"
)

func binetFibonacci(n int) int {
	if n < 0 {
		return -1 // Invalid input
	}
	if n <= 1 {
		return n
	}

	phi := (1 + math.Sqrt(5)) / 2
	psi := (1 - math.Sqrt(5)) / 2

	return int(math.Round((math.Pow(phi, float64(n)) - math.Pow(psi, float64(n))) / math.Sqrt(5)))
}


func main() {
	fmt.Print("Enter the number of elements: ")

	var fibNum int
	fmt.Scanf("%d", &fibNum)

	fmt.Print("Fibonacci (Binet's Formula):\n")
	fmt.Println(binetFibonacci(fibNum))
}