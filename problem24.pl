#!/usr/bin/perl
use strict;
use warnings;

my @permArray = ();
my $count = 0;

foreach my $one ( 0..9 ) {
    foreach my $two ( 0..9 ) {
	next unless ( $two != $one );
    foreach my $three ( 0..9 ) {
	next unless ( $three != $two && $three != $one );
    foreach my $four ( 0..9 ) {
	next unless ( $four != $three && $four != $two && $four != $one );
    foreach my $five ( 0..9 ) {
	next unless ( $five != $four && $five != $three && $five != $two && $five != $one );
    foreach my $six ( 0..9 ) {
	next unless ( $six != $five && $six != $four && $six != $three && $six != $two && $six != $one );
    foreach my $seven ( 0..9 ) {
	next unless ( $seven != $six && $seven != $five && $seven != $four && $seven != $three && $seven != $two && $seven != $one );
    foreach my $eight ( 0..9 ) {
	next unless ( $eight != $seven && $eight != $six && $eight != $five && $eight != $four && $eight != $three && $eight != $two && $eight != $one );
    foreach my $nine ( 0..9 ) {
	next unless ( $nine != $eight && $nine != $seven && $nine != $six && $nine != $five && $nine != $four && $nine != $three && $nine != $two && $nine != $one );
    foreach my $ten ( 0..9 ) {
	next unless ( $ten != $nine && $ten != $eight && $ten != $seven && $ten != $six && $ten != $five && $ten != $four && $ten != $three && $ten != $two && $ten != $one );
	my $perm = $one.$two.$three.$four.$five.$six.$seven.$eight.$nine.$ten;
	push ( @permArray, $perm );
	$count++;
	if ( $count == 1000000 ) {
	    print "The millionth lexicographic permutation of the digits 0-9 is $permArray[$count-1].\n";
	    exit;
	}
    }
    }
    }
    }
    }
    }
    }
    }
    }
}
