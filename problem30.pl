#!/usr/bin/perl
use strict;
use warnings;

my $answer = 0;

foreach my $number ( 2..(9**5)*4 ) {
    my $sum = 0;
    $sum += $_**5 for split ( //, $number );
    $answer += $sum if ( $sum == $number );
}

print "The sum of all the numbers that can be written as the sum of the 5th powers of their digits is $answer.\n";
