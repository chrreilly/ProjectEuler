#!/usr/bin/perl
use strict;
use warnings;
use Math::BigInt;

sub readFile {
    my $filename = shift;
    my $number = Math::BigInt->new();
    open ( FILE, "<", "$filename" ) or die ( "Can't open $filename\n" );
    while ( <FILE> ) {
	chomp;
	$number += $_;
    }
    return $number;
}

my $sum = readFile('problem13.txt');
my @answer = split ( //, $sum );
for ( my $i=0; $i<10; $i++ ) {
    print $answer[$i];
}
print "\n";
