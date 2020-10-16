<?php   
function Fibonacci($number){ 
    if ($number < 0)
        return "Wrong number!";
	
    if ($number == 0) 
        return 0;     
    else if ($number == 1) 
        return 1;     
      
    // recursive call to get the upcoming numbers
    else
        return (Fibonacci($number-1) +  
                Fibonacci($number-2)); 
} 
  
// Example usage
$number = 15;
for ($counter = 1; $counter < $number; $counter++){   
    echo Fibonacci($counter),' '; 
} 
?>
