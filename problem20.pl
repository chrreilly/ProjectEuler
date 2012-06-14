#!/usr/bin/perl
use strict;
use warnings;
use Math::BigInt;

my $number = new Math::BigInt(100);
my $factorial = factorial($number);
my @numberArray = split ( //, $factorial );
my $answer = 0;

foreach ( @numberArray ) {
    $answer += $_;
}

print "The sum of the digits in the number 100! is $answer.\n";

sub factorial {
    my $number = shift;
    my $answer = 1;
    while ( $number > 0 ) {
	$answer *= $number;
	$number--;
    }
    return $answer;
}
