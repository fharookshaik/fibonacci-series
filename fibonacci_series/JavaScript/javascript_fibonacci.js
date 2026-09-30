const fibo = (n, memo = {}) => memo[n] || (n <= 2 ? 1 : (memo[n] = fibo(n - 1, memo) + fibo(n - 2, memo)));

const readline = require("readline").createInterface({
  input: process.stdin,
  output: process.stdout
});
 
readline.question("Enter the Nth term: ", (number) => {
	console.log(fibo(number));
	readline.close();
});
