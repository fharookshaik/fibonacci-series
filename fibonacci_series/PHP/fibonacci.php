<?php  
/* Print fiboancci series upto 12 elements. */  
$num = 12;  

$input = readline("How many numbers to generate?");
if( $input ) $num = 1*$input; 

echo "<h3>Fibonacci series using recursive function:</h3>";  
echo "\n";
/* Recursive function for fibonacci series. This is fairly inefficient. */  
function series($num){
    if($num == 0){
        return 0;
    } else if( $num == 1) {
        return 1;
    } else {
        return (series($num-1) + series($num-2));  
    }
}
/* Call Function. */  
for ($i = 0; $i < $num; $i++){  
    echo series($i);  
    echo "\n";  
}  
