#!/usr/bin/perl
use strict;
use warnings;

my ($a, $b, $c, $answer);

print "Enter a Pythagorean triple sum:\n";
my $sum = <>;

for ( $a=0;$a<($sum/3);$a++ ) {
    for ( $b=0;$b<($sum/2);$b++ ) {
	$c = $sum - $a - $b;
	if ( ($a*$a+$b*$b) == ($c*$c)) {
	    $answer = $a*$b*$c;
    	    print "Product abc is ", $answer, "\n";
	    exit;
        }
    }
}

print "No Pythagorean triple for this sum.\n";
