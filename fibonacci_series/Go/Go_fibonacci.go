package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n int
	if _, err := fmt.Scan(&n); err != nil || n < 0 || n > 94 {
		os.Exit(2)
	}

	terms := make([]string, 0, n)
	var a uint64
	var b uint64 = 1

	for i := 0; i < n; i++ {
		terms = append(terms, strconv.FormatUint(a, 10))
		a, b = b, a+b
	}

	fmt.Println(strings.Join(terms, " "))
}
