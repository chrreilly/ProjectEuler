#!/usr/bin/perl
use strict;
use warnings;
use Text::CSV_XS;
use Math::BigInt;

my @data = parseFile('problem22.txt');
my $sum = new Math::BigInt(0);
my $nameCount = 1;

foreach ( @data ) {
    my @name = split ( //, $_ );
    foreach ( @name ) {
	$sum += nameScore($_)*$nameCount;
    }
    $nameCount++;
}

print "The total name score is $sum.\n";

sub parseFile {
    my $filename = shift;
    open ( my $fh, "< $filename" ) or die "Cannot open $filename.\n";
    my $csv = Text::CSV_XS->new({binary => 1});
    my @data;

    while ( my $row = $csv->getline($fh) ) {
	$csv->parse($row);
	push ( @data, @$row );
    }
    @data = sort { $a cmp $b } @data;
    return @data;
    close $fh;
}

sub nameScore {
    my $letter = shift;
    return 1 if ( $letter eq "A" );
    return 2 if ( $letter eq "B" );
    return 3 if ( $letter eq "C" );
    return 4 if ( $letter eq "D" );
    return 5 if ( $letter eq "E" );
    return 6 if ( $letter eq "F" );
    return 7 if ( $letter eq "G" );
    return 8 if ( $letter eq "H" );
    return 9 if ( $letter eq "I" );
    return 10 if ( $letter eq "J" );
    return 11 if ( $letter eq "K" );
    return 12 if ( $letter eq "L" );
    return 13 if ( $letter eq "M" );
    return 14 if ( $letter eq "N" );
    return 15 if ( $letter eq "O" );
    return 16 if ( $letter eq "P" );
    return 17 if ( $letter eq "Q" );
    return 18 if ( $letter eq "R" );
    return 19 if ( $letter eq "S" );
    return 20 if ( $letter eq "T" );
    return 21 if ( $letter eq "U" );
    return 22 if ( $letter eq "V" );
    return 23 if ( $letter eq "W" );
    return 24 if ( $letter eq "X" );
    return 25 if ( $letter eq "Y" );
    return 26 if ( $letter eq "Z" );
}
