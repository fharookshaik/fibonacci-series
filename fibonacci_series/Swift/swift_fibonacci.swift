func fibonacci(_ n : Int, _ mem : inout [Int:Double]) -> Double {
  if (n == 1 || n == 0) {
    return 1
  }

  if let val = mem[n] {
    return val
  }

  let val = fibonacci(n - 1, &mem) + fibonacci(n - 2, &mem)
  mem[n] = val
  
  return val
}

func fibonacci(_ n : Int) -> Double {
  var mem = [Int:Double]()
  return fibonacci(n, &mem)
}

print("Enter a number for fibonacci sequence: ", terminator: "")

if let inputStr = readLine() {
  if let input = Int(inputStr) {
    let result = fibonacci(input)
    print("result: \(result)")
  } else {
    print("Invalid number")
  }  
}
