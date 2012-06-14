#!/usr/bin/perl
use strict;
use warnings;

my $nextNumber = 7;
my $number = 28;

while (1) {
    my $factorCount = 0;
    my $sq_n = sqrt($number);
    my $i;
    for ( $i=1; $i<=$sq_n; $i++ ) {
	if ( ($number % $i) == 0 ) {
	    $factorCount += 2;
	    if ( $factorCount > 500 ) {
		print $number, "\n";
		exit;
	    }
	}
    }
    $nextNumber++;
    $number += $nextNumber;
}	
