// PHP program to print first n Fibonacci numbers

// Function to print first n Fibonacci Numbers

function printFibonacciNumbers($n)
{
    $num1 = 0;
    $num2 = 1;
    $i;

    if ($n < 1)
        return;

    for ($i = 1; $i <= $n; $i++)
    {
        echo($num2);
        echo(" ");
        $next = $num1 + $num2;
        $num1 = $num2;
        $num2 = $next;
    }
}

    // Driver Code 
    printFibonacciNumbers(7);
