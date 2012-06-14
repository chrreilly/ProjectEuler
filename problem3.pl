#!/usr/bin/perl
use strict;
use warnings;

my $factor = 1;
my $count = 2;
my $answer = 1;

print "Enter a number to find its greatest prime factor:\n";
chomp ( my $number = <> );

while ( $factor*$factor <= $number ) {
    if ( ($number/$factor) =~ /^\d+\z$/ ) {
	while ( $count <= $factor) {
	    if ( ($factor/$count) !~ /^\d+\z$/ ) {
		$count++;
	    }

	    else {
		last;
	    }

	    if ( $count == $factor ) {
		$answer = $factor;
	    }
	}
	$count = 2;
    }
    $factor++;
}

print $answer, "\n";
