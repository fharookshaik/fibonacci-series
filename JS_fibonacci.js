function fibonacci(num) {
  if (num <= 1) return 1;

  return fibonacci(num - 1) + fibonacci(num - 2);
}

var number = window.prompt("Enter your number: ");
alert("Fibonacci number of " + number + " is: " + fibonacci(number));
