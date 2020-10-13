<?php 
// PHP program to print first n Fibonacci numbers 
  
// Function to print first n Fibonacci Numbers 

function printFibonacciNumbers($n) 
{ 
    $f1 = 0; 
    $f2 = 1;  
    $i; 
  
    if ($n < 1) 
        return; 
  
    for ($i = 1; $i <= $n; $i++) 
    { 
        echo($f2); 
        echo(" "); 
        $next = $f1 + $f2; 
        $f1 = $f2; 
        $f2 = $next; 
    } 
} 
  
    // Driver Code 
    printFibonacciNumbers(7);
