import Foundation

// Recursive Fibonacci function with memoization
func fibonacci(_ n: Int, _ mem: inout [Int: Double]) -> Double {
    // Base cases for Fibonacci sequence
    if n == 0 {
        return 0 // Fibonacci(0) is 0
    } else if n == 1 {
        return 1 // Fibonacci(1) is 1
    }
    
    // Check if the value is already computed and stored in the memoization dictionary
    if let val = mem[n] {
        return val
    }
    
    // Calculate the Fibonacci number using recursion and store it in the memoization dictionary
    let val = fibonacci(n - 1, &mem) + fibonacci(n - 2, &mem)
    mem[n] = val // Store computed value for future reference
    
    return val
}

// Wrapper function to initialize the memoization dictionary
func fibonacci(_ n: Int) -> Double {
    var mem = [Int: Double]()
    return fibonacci(n, &mem)
}

// Main program
print("Enter a positive number for Fibonacci sequence: ", terminator: "")

if let inputStr = readLine() {
    if let input = Int(inputStr) {
        if input < 0 {
            print("Please enter a non-negative integer.")
        } else {
            let result = fibonacci(input)
            print("Fibonacci(\(input)) = \(result)")
        }
    } else {
        print("Invalid number. Please enter an integer.")
    }
} else {
    print("Input error. Please try again.")
}
