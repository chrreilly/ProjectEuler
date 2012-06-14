#!/usr/bin/perl -w
use strict;
use warnings;

my (@number, @temp, @product);
my $i = 0;

open (FH, "problem8.txt") || die "Can't open problem8.txt $.\n";

foreach(<FH>) {
    chomp($_);
    @temp = ($_ =~ m/./g);
    @number = (@number, @temp);
}

while ( $i < 996 ) {
    $product[$i] = $number[$i]*$number[$i+1]*$number[$i+2]*$number[$i+3]*$number[$i+4];
    $i++;
}

@product = sort{ $b <=> $a} @product;
print "$product[0]", "\n";
