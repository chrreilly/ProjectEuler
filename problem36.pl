#!/usr/bin/perl
use strict;
use warnings;

my $answer = 0;
for ( 1..1000000 ) {
    my $bin = dec2bin($_);
    $answer += $_ if ( ($_ == scalar reverse) && ($bin == reverse($bin)) );
}

print "The sum of all the numbers under 1000000 that are palindromic in both base 10 and 2 is $answer.\n";

sub dec2bin {
    my $bin = unpack('B32', pack('N', shift));
    $bin =~ s/^0+(?=\d)//;
    return $bin;
}
