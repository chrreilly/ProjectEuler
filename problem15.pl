#!/usr/bin/perl
use strict;
use warnings;

print "Please enter a grid size (i.e. 20):\n";
chomp (my $size = <>);
my $answer = factorial(2*$size)/(factorial($size)*factorial($size));
print "There are $answer different routes in a $size x $size grid.\n";

sub factorial {
    my $number = shift;
    my $answer = $number;
    for ( my $i=1; $i<=$number; $i++ ) {
	$answer *= $i;
    }
    return $answer;
}
