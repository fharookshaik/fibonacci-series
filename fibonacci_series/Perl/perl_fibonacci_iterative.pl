use strict;
use warnings;
use feature 'say';

sub fibonacci {
    my ($n) = @_;
    return $n if $n < 2;

    my ($a, $b) = (0, 1);
    for (2 .. $n) {
        ($a, $b) = ($b, $a + $b);
    }
    return $b;
}

print "How many Fibonacci terms should be printed? ";
chomp(my $input = <STDIN>);

if ($input =~ /^\d+$/ && $input >= 1) {
    for my $i (0 .. $input - 1) {
        say "fib($i) = ", fibonacci($i);
    }
} else {
    say "Invalid input. Please enter a positive integer.";
}
