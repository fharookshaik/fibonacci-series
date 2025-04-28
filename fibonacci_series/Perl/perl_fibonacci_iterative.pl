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

print "Enter a number: ";
chomp(my $input = <STDIN>);

if ($input =~ /^\d+$/) {
    say "fib($input) = ", fibonacci($input);
} else {
    say "Invalid input. Please enter a non-negative integer.";
}
