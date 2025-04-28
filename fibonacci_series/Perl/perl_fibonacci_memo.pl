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

for my $i (0..15) {
    say "fib($i) = ", fibonacci($i);
}
