#!/usr/bin/perl
use strict;
use warnings;

my $answer = 0;
my $max = 0;
my @perimeter = ();

for my $a ( 1..500 ) {
    for my $b ( 1..500 ) {
	my $c = sqrt( $a*$a+$b*$b );
	    next if ( $c =~ /\D/ );
	my $sum = $a+$b+$c;
	$perimeter[$sum] += 1 if ( $sum <= 1000 );
    }
}

for my $i ( 0..$#perimeter ) {
    no warnings "uninitialized";
    if ( $perimeter[$i] > $max ) {
	$answer = $i;
	$max = $perimeter[$i];
    }
}
print "For a right triangle with p<=1000, there are the most solutions when the perimeter is $answer.\n";
    
