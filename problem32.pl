#!/usr/bin/perl
use strict;
use warnings;

my @comparison = ( 1, 2, 3, 4, 5, 6, 7, 8, 9 );
my @answerArray = ();
my $answer = 0;

for ( my $i=1; $i<100; $i++ ) {
    for ( my $j=1; $j<2000; $j++ ) {
	my @pandigital = ();
	my $sum = $i*$j;
	@pandigital = split ( //, $i.$j.$sum );
	if ( scalar(@pandigital == 9 ) ) {
	    @pandigital = sort { $a <=> $b } @pandigital;  
	    if ( @pandigital ~~ @comparison ) {
		unless ( grep {$_ eq $sum} @answerArray ) {
		    push ( @answerArray, $sum );
		    $answer += $sum;
		}
	    }
	}
    }
}

print "The sum of the prodcuts of all 1-9 pandigital numbers is $answer.\n";
