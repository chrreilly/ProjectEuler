#!/usr/bin/perl
use strict;
use warnings;

my $sum_of_square = 0;
my $square_of_sum = 0;

foreach ( 1..100 ) {
    $sum_of_square += $_*$_;
    $square_of_sum += $_;
}

my $answer = ($square_of_sum*$square_of_sum) - $sum_of_square;
print $answer, "\n";
