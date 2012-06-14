#!/usr/bin/perl
use strict;
use warnings;
use Math::BigInt;

my $number = new Math::BigInt(2);
    $number **= 1000;
my @numberArray = split ( //, $number );

my $answer = 0;
foreach ( @numberArray ) {
    $answer += $_;
}

print "The sum of all the digits in 2^1000 is $answer.\n";
