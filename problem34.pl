#!/usr/bin/perl
use strict;
use warnings;

my $answer = 0;
my @factorialArray = ();
push ( @factorialArray, factorial($_) ) for (0..9);

for my $number ( 10..50000 ) { #Technically 7*9!=2540160
    my $sum = 0;
    my @numberArray = split ( //, $number );
    foreach ( @numberArray ) {
	$sum += $factorialArray[$_];
    }
    $answer += $number if ( $sum == $number );
}
print "The sum of the factorians excluding 1 and 2 is $answer.\n";

sub factorial {
    my $number = shift;
    $number == 0 ? 1: $number*factorial($number-1);
}
