#!/usr/bin/perl
use strict;
use warnings;

sub divide {
    my ( $divider ) = @_;

    foreach ( 11..20 ) {
	return 0 if ( $divider % $_ );
    }

    return 1;
}

my $number = 2520;
while ( !divide($number) ) {
    $number += 2520;
}

print $number, "\n";
