#!/usr/bin/perl
use strict;
use warnings;

my $number = undef;
my @decimal = ();
my $answer = 1;

$number .= $_ for (0..1000000);
@decimal = split ( //, $number );

for ( 0..6 ) {
    $answer *= $decimal[10**$_];
}

print "The product of the nth digits in the irrational fraction is $answer.\n";
