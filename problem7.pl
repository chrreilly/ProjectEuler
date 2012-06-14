#!/usr/bin/perl
use strict;
use warnings;

sub isprime {
    my $number = shift;
    foreach ( 3..(int(sqrt($number)))) {
	return 0 if ( !($number % $_) )
    }
    return 1;
}

my $count = 1;
my $answer = 3;

while ( $count != 10001 ) {
    if ( isprime($answer) ) {
	$count++;
    }
    $answer += 2;
}

print $answer-2, "\n";
