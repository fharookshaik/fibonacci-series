package main

import ("fmt")


func fibonnaci(x int) []int {
	fib := []int{0,1}
	for i := 2; i <= x; i++ {
		t := fib[i-1] + fib[i-2]
		fib = append(fib, t)
	}
	return fib
}

func main() {
	var num int
	fmt.Printf("Enter a number: \n")
	fmt.Scanf("%d",&num)
	res := fibonnaci(num)
	fmt.Println(res)
}