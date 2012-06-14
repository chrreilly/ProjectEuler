#!/usr/bin/perl
use strict;
use warnings;

my $number = 3;
my $multiplier = 1;
my $count = 1;
my $sum = 1;

while ( $number <= 1001**2 ) {
    $sum += $number;
    $number += 2*$multiplier;
    $count++;
    $multiplier++ if ( ($count % 4) == 0 );
}

print "The sum of the numbers on the diagonals in a 1001 by 1001 spiral is $sum.\n";
