#!/usr/bin/perl
use strict;
use warnings;

sub readFile {
    my $filename = shift;
    open ( FILE, "< $filename" ) or die "Cannot open $filename.\n";
    my @data;

    while ( <FILE> ) {
	chomp;
	my @temp = split ( " ", $_ );
	push ( @data, \@temp );
    }
    return @data;
}

sub compare {
    my @data = readFile('problem18.txt');
    for ( my $row=scalar(@data)-1; $row>=0; $row-- ) {
	for ( my $col=0; $col<$row; $col++ ) {
	    $data[$row-1][$col] += $data[$row][$col]>$data[$row][$col+1] ? $data[$row][$col] : $data[$row][$col+1];
	}
    }
    return $data[0][0];
}

printf "The max from top to bottom of the triangle is %s.\n", my $temp = compare();
