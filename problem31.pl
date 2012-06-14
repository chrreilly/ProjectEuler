#!/usr/bin/perl
use strict;
use warnings;

my @currency = ( 1, 2, 5, 10, 20, 50, 100, 200 );
my @ways = ();
$ways[0] = 1;

for ( my $i = 0; $i < scalar(@currency); $i++ ) {
    for ( my $j = $currency[$i]; $j <= 200; $j++ ) {
	$ways[$j] += $ways[$j-$currency[$i]];
    }
}

print "There are $ways[200] ways to make up 2pounds using any number of coins.\n";
