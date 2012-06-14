#!/usr/bin/perl
use strict;
use warnings;

use bigint;

my $denominator = 2;
my $chain = 0;
my $remainder;

while ( $denominator <= 1000 ) {
    my $rString;
    my $numerator = 1;
    foreach ( 0..(2*$denominator-3) ) {
	$remainder = $numerator % $denominator;
	$numerator = 10*$remainder;
	$remainder = substr($remainder, 0, 1);
	$rString .= $remainder;
    }
    $rString =~ /^[0-9]*([0-9]{5,}?)\1+[0-9]*?$/;
    $chain = length($1) if ( length($1) > $chain );
    $denominator++;
}

print "The longest recurring cycle of decimals for numbers under 1000 is $chain.\n";
