use strict;
use warnings;
use feature 'say';

my %memo = (0 => 0, 1 => 1);

sub fibonacci {
    my ($n) = @_;
    return $memo{$n} if exists $memo{$n};
    $memo{$n} = fibonacci($n - 1) + fibonacci($n - 2);
    return $memo{$n};
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
