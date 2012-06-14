#!/usr/bin/perl
use strict;
use warnings;

sub centuriesTable {
    my $century = shift;
    return 0 if ( $century >= 1900 && $century < 2000 );
    return 6 if ( $century >= 2000 && $century < 2100 );
}

sub monthsTable {
    my $month = shift;
    my $leap = shift;
    return 0 if ( $month eq "January" && $leap == 0 );
	return 6 if ( $month eq "January" && $leap == 1 );
    return 3 if ( $month eq "February" && $leap == 0 );
	return 2 if ( $month eq "February" && $leap == 1 );
    return 3 if ( $month eq "March" || $month eq "November" );
    return 6 if ( $month eq "April" || $month eq "July" );
    return 1 if ( $month eq "May" );
    return 4 if ( $month eq "June" );
    return 2 if ( $month eq "August" );
    return 5 if ( $month eq "September" || $month eq "December" );
    return 0 if ( $month eq "October" );
}

my @months = ( "January", "February", "March", "April",
		"May", "June", "July", "August",
		"September", "October", "November", "December" );
my $year = 1900;
my $count = 0;
my $leap = 0;
my $day;

while ( $year <= 2000 ) {
    if ( $year % 4 == 0 && $year != 1900 ) {
	$leap = 1;
    }

    foreach ( @months ) {
	my $calYear = substr($year, 2);
	$day = int($calYear/4) + $calYear + monthsTable($_, $leap) + centuriesTable($year) + 1;
	if ( $day % 7 == 0 && $year >= 1901 ) {
	    $count++;
	}
    }
    $leap = 0;
    $year++;
}

print "$count Sundays fall on the first of the month between Jan 1, 1901 and Dec 31, 2000.\n";
