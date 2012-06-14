#!/usr/bin/perl
use strict;
use warnings;

sub isprime {
    my $self = shift;
    my $i;
    for ( $i=2;$i<=(int(sqrt($self)));$i++ ) {
	if ( ($self % $i) == 0 ) {
	    return 0;
	    last;
	}
    }
    return 1
}

my $count = 3;
my $sum = 2;

while ( $count < 2000000 ) {
    if ( isprime($count) ) {
	$sum += $count;
    }
    $count+=2;
}

print "The sum of all the primes below 2 million is $sum\n";
