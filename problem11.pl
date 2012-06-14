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
    my @data = readFile('problem11.txt');
    my $product = 0;
    my $answer = 0;

    for ( my $row=0; $row<20; $row++ ) {
	for ( my $col=0; $col<20; $col++ ) {
	    #Compare right
	    if ( $data[$row][$col+3] ) {
		 $product = $data[$row][$col]*$data[$row][$col+1]*$data[$row][$col+2]*$data[$row][$col+3];
		$answer = $product if ($product > $answer );
	    }

	    #Compare left
	    if ( $data[$row][$col-3] ) {
		$product = $data[$row][$col]*$data[$row][$col-1]*$data[$row][$col-2]*$data[$row][$col-3];
		$answer = $product if ($product > $answer );
	    }

	    #Compare down
	    if ( $data[$row+3][$col] ) {
		$product = $data[$row][$col]*$data[$row+1][$col]*$data[$row+2][$col]*$data[$row+3][$col];
		$answer = $product if ($product > $answer );
	    }

	    #Compare up
	    if ( $data[$row-3][$col] ) {
		$product = $data[$row][$col]*$data[$row-1][$col]*$data[$row-2][$col]*$data[$row-3][$col];
		$answer = $product if ($product > $answer );
	    }

	    #Compare NE
	    if ( $data[$row-3][$col+3] ) {
		$product = $data[$row][$col]*$data[$row-1][$col+1]*$data[$row-2][$col+2]*$data[$row-3][$col+3];
		$answer = $product if ($product > $answer );
	    }

	    #Compare SE
	    if ( $data[$row+3][$col+3] ) {
		$product = $data[$row][$col]*$data[$row+1][$col+1]*$data[$row+2][$col+2]*$data[$row+3][$col+3];
		$answer = $product if ($product > $answer );
	    }

	    #Compare SW
	    if ( $data[$row+3][$col-3] ) {
		$product = $data[$row][$col]*$data[$row+1][$col-1]*$data[$row+2][$col-2]*$data[$row+3][$col-3];
		$answer = $product if ($product > $answer );
	    }

	    #Compare NW
	    if ( $data[$row-3][$col-3] ) {
		$product = $data[$row][$col]*$data[$row-1][$col-1]*$data[$row-2][$col-2]*$data[$row-3][$col-3];
		$answer = $product if ($product > $answer );
	    }
        }
    }
    return $answer;
}

printf "The greatest product of any four adjacent numbers is %s.\n", compare();
