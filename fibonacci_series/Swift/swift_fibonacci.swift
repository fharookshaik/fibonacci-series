func fibonacci(_ number: Int, _ mem: inout [Int: Double]) -> Double {
  if number == 1 || number == 0 {
    return 1
  }

  if let val = mem[number] {
    return val
  }

  let val = fibonacci(number - 1, &mem) + fibonacci(number - 2, &mem)
  mem[number] = val
  
  return val
}

func fibonacci(_ number: Int) -> Double {
  var mem = [Int: Double]()
  return fibonacci(number, &mem)
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
