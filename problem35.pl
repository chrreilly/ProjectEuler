#!/usr/bin/perl
use strict;
use warnings;

my @primeArray = (2);
my $number = 3;

while ( $number<1000000 ) {
    if ( isPrime($number) ) {
	my @numberArray = ();
	@numberArray = split ( //, $number );
	for my $pos ( 0..$#numberArray ) {
	    unshift @numberArray, pop @numberArray;
	    my $shiftNum = join("", @numberArray );
	    last unless ( isPrime($shiftNum) );
	    push ( @primeArray, $number ) if ( $pos == $#numberArray );
	}
    }
    $number += 2;
}
print "The number of circular primes below 1000000 is ", scalar(@primeArray), ".\n";

sub isPrime {
    my $number = shift;
    for ( 2..sqrt($number) ) {
	return 0 if ( ($number % $_) == 0 );
    }
    return 1;
}
