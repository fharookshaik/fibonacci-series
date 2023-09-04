#!/usr/bin/perl

print "How many terms would you like in the series?: ";
$terms = <>;
chomp($terms);

$num1 = 0;
$num2 = 1;

print $num1 . ", " . $num2;

$numsPrinted = 2;
while($numsPrinted < $terms) {
    $next = $num1 + $num2;
    if($numsPrinted < $terms) {
        print ", "; 
    }
    print $next;
    $num1 = $num2;
    $num2 = $next;
    $numsPrinted++;
}