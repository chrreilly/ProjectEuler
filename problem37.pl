#!/usr/bin/perl
use strict;
use warnings;

my $number = 13;
my $primeCount = 0;
my $answer = 0;

while ( $primeCount < 11 ) { 
    if ( $number =~ /^[13579]+$/ || $number == 23 ) {
    if ( isPrime($number) ) {
	my $count = 0;
	for ( 1..length($number)-1 ) {
	    my $rShift = substr($number, $_);
	    my $lShift = reverse(substr(reverse($number), $_));
	    if ( isPrime($rShift) && isPrime($lShift) ) {
		$count++;
		if ($count == length($number)-1) {
		    $answer += $number;
		    $primeCount++;
		}
	    } else {
		last;
	    }
	}
    }
    }
    $number += 2;
}

print "The sum of all truncatable primes is $answer.\n";

sub isPrime {
    my $number = shift;
	return 0 if ($number == 1);
    foreach ( 2..sqrt($number) ) {
	return 0 if ( ($number % $_) == 0 );
    }
    return 1;
}
