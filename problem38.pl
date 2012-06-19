#!/usr/bin/perl
use strict;
use warnings;

my $number = 9;
my $answer = 0;
my $pandigital;

while ( $number < 10000 ) {
    $pandigital = undef;
    for ( 1..9 ) {
    	$pandigital = $pandigital.($number*$_);
    	if ( length($pandigital) == 9 && $pandigital > $answer ) {
	    $answer = $pandigital if ( isPandigital($pandigital) );
	}
    }
    $number++;
}

print "The largest 1 to 9 pandigital number that is the concatenated product of an integer is $answer.\n";

sub isPandigital {
    my $number = shift;
    my @comparison = ( 1, 2, 3, 4, 5, 6, 7, 8, 9);
    my @pandigital = split ( //, $number );
    @pandigital = sort { $a <=> $b } @pandigital;
	return 1 if ( @pandigital ~~ @comparison );
 	return 0;
}
