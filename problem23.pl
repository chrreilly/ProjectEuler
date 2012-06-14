#!/usr/bin/perl
use strict;
use warnings;

my @abundantSum = sumAbundants();
my $number = 1;
my $answer = 0;

while ( $number <= 20161 ) {
    if ( !defined $abundantSum[$number] ) {
	$answer += $number;
    }
    $number++;
}

print "The sum of all integers that cannot be written as the sum of two abundant numbers is $answer.\n";

sub sumAbundants {
    my @abundants = getAbundants();
    my @abundantSum;
    foreach ( @abundants ) {
	my $x = $_;
	foreach ( @abundants ) {
	    my $sum = $_ + $x;
	    if ( $sum <= 20161 && !defined $abundantSum[$sum] ) {
		$abundantSum[$sum] = 1;
	    }
	}
    }
    return @abundantSum;
}

sub getAbundants {
    my @abundants;
    for ( my $number=0; $number<=20161; $number++ ) {
	my $sum = 0;
	for ( my $i=1; $i<=$number/2; $i++ ) {
	    if ( $number % $i == 0 ) {
		$sum += $i;
		push ( @abundants, $number ) if ( $sum > $number );
	    }
	}
    }
    return @abundants;
}

