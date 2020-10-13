const fibonacci = (range) => {
	
	let num1 = 0, num2 = 1, nextVal

    for (let i = 0; i < range; i++){
        console.log(num1)
        nextVal = num1 + num2
        num1 = num2
		num2 = nextVal
    }
}

let number = parseInt(prompt('Enter the number of terms: '))
fibonacci(number)