import Foundation

// Function to generate Fibonacci sequence up to n terms
func fibonacci(n: Int) -> [Int] {
    var sequence = [0, 1]
    
    if n <= 1 {
        return Array(sequence.prefix(n))
    }
    
    for _ in 2..<n {
        let nextNumber = sequence[sequence.count - 1] + sequence[sequence.count - 2]
        sequence.append(nextNumber)
    }
    
    return sequence
}

// Ask user for input and convert it to an integer
print("Enter the number of terms for the Fibonacci sequence: ", terminator: "")
if let input = readLine(), let n = Int(input) {
    let result = fibonacci(n: n)
    print("Fibonacci sequence up to \(n) terms: \(result)")
} else {
    print("Invalid input. Please enter a valid integer.")
}
