#!/usr/bin/perl
use strict;
use warnings;

my $answer = 0;
my $countMax = 0;

foreach my $a ( -1000..1000 ) {
    next unless isPrime($a);
    foreach my $b ( -1000..1000 ) {
	next unless isPrime($b);
	my $number = 0;
	my $count = 0;
	my $flag = 0;
	while ( $flag == 0 ) {
	    my $quadratic = $number*$number+$a*$number+$b;
	    if ( isPrime($quadratic) == 1 ) {
		$count++;
		if ( $count > $countMax ) {
		    $countMax = $count;
		    $answer = $a*$b;
		}
		$number++;
	    } else {
		$flag = 1;
	    }
	}
    }
}

print "The product of the quadratic coefficients that produces the max primes is $answer.\n";

sub isPrime {
    my $number = shift;
    foreach ( 2..sqrt(abs($number)) ) {
	return 0 if ( ($number % $_) == 0 );
    }
    return 1;
}

