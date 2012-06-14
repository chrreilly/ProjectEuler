#!/usr/bin/perl
use strict;
use warnings;

sub iterate {
    my $number = shift;
    my $iterations = 0;
    
    while ( $number != 1 ) {
	if ( $number % 2 == 0 ) {
	    $number = $number/2;
	} else {
	    $number = 3*$number+1;
	}
    $iterations++;
    }
    return $iterations;
}

my $answer = 0;
my $maxIteration = 0;

for ( my $i=13; $i<1000000; $i++ ) {
    my $iterations = iterate($i);
    if ( $iterations > $maxIteration ) {
	$maxIteration = $iterations;
	$answer = $i;
    }
}

print "$answer produces the longest chain with $maxIteration iterations.\n";
