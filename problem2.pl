#!/usr/bin/perl
use strict;
use warnings;

my @count = (1, 2,);
my $total = 0;
my $temp;

while ( $count[1] < 4000000 ) {    
    if ( $count[1] % 2 == 0 ) {
	$total += $count[1];
    }

    $temp = $count[1];
    $count[1] = $count[0] + $count[1];
    $count[0] = $temp;
}

print $total, "\n";
