// program to generate fibonacci series up to n terms in JavaScript

// take input from the user : n
const number = parseInt(prompt("Enter the number of terms: "));
//Base Cases
let num1 = 0, num2 = 1; 
let nextTerm;

console.log('Fibonacci Series:');

for (let i = 1; i <= number; i++) {
    //printing till n
    console.log(n1);

    nextTerm = num1 + num2;
    num1 = num2;
    num2 = nextTerm;
}