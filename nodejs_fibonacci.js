const fs = require('fs')
const readline = require("readline")

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});


rl.question("Enter the nth term: ", function(value) {
  console.log(fibonacci(value))
  
  rl.close()
}
)

fibonacci = (valor) => {
    if (valor === 1) {
      return 0
    }
    if(valor === 2) {
      return 1
    }
    return fibonacci(valor -1) + fibonacci(valor-2)
  
  }

  