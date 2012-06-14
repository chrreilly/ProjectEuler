#!/usr/bin/perl
use strict;
use warnings;

my $factor1 = 100;
my $factor2 = 100;
my $number;
my $answer = 0;

while ( $factor1 <= 999 ) {
    while ( $factor2 <= 999 ) {
	$number = $factor1*$factor2;
	if ( $number == reverse($number) ) {
	    if ( $number > $answer ) {
		$answer = $number;
	    }
	}
    $factor2++;
    }
$factor1++;
$factor2 = 100;
}

print $answer, "\n";
