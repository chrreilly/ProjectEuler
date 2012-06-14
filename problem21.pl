#!/usr/bin/perl
use strict;
use warnings;

my $number = 1;
my $answer = 0;

while ( $number < 10000 ) {
    my $sum1 = getFactorSum($number);
    my $sum2 = 0;
    if ( $sum1 > $number ) {
	$sum2 = getFactorSum($sum1);
    }
    if ( $number == $sum2 && $sum1 != $number ) {
	$answer += $sum1 + $sum2;
	$number = $sum1;
    }
    $number++;
}

print "\nThe sum of the amicable numbers under 10000 is $answer.\n";


sub getFactorSum {
    my $number = shift;
    my $factorSum = 0;
    for ( my $i=1; $i<$number; $i++ ) {
	if ( $number % $i == 0 ) {
	    $factorSum += $i;
	}
    }
    return $factorSum;
}
