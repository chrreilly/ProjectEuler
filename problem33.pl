#!/usr/bin/perl
use strict;
use warnings;

my $answer = 1;

for ( my $i=11; $i<100; $i++ ) {
    for ( my $j=10; $j<$i; $j++ ) {
	if ( checkFraction($j, $i) ) {
	    $answer *= $j/$i;
	}
    }
}

printf "In lowest common terms, the numerator is %s, and the denominator is %s.\n", decimal2fraction("$answer");


sub checkFraction {
    my $num = shift;
    my $denom = shift;
	return 0 if ( ($num % 10) == 0 || ($denom % 10) == 0 );
    my $fraction = $num/$denom;
    my @num = split ( //, $num );
    my @denom = split ( //, $denom );
    for ( my $i=0; $i<=1; $i++ ) {
	for ( my $j=0; $j<=1; $j++ ) {
	    if ( $num[$i] == $denom[$j] ) {
	        return 1 if ( ($num[($i+1)%2]/$denom[($j+1)%2]) == $fraction ) 
	    }
	}
    }
    return 0;
}

sub decimal2fraction {
    my $decimal = shift;
    my @z = ( undef, $decimal );
    my @d = ( 0, 1 );
    my @n = ();
    my $i = 1;
    while (1) {
	$z[$i+1] = 1/($z[$i]-int($z[$i]));
	$d[$i+1] = $d[$i]*int($z[$i+1])+$d[$i-1];
	$n[$i+1] = int($decimal*$d[$i+1]+.5);
	if ( ($n[$i+1]/$d[$i+1]) == $decimal && $n[$i+1] =~ /\d/ && $d[$i+1] =~ /\d/ ) {
	    return ( $n[$i+1], $d[$i+1] );
	}
	$i++;
    }
}
