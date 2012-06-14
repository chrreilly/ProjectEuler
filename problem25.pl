#!/usr/bin/perl
use strict;
use warnings;

use bigint;

my @fibonacci = ( 0, 1 );
my $count = 1;
my $digits;

while (1) {
    $fibonacci[$count] = $fibonacci[$count-1] + $fibonacci[$count-2];
    $digits = scalar(split( "", $fibonacci[$count] ));
    if ( $digits >= 1000 ) {
	print "The first term in the Fibonacci sequence to contain 1000 digits is $count.\n";
	exit;
    }
    $count++;
}
