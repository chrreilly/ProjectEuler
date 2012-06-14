#!/usr/bin/perl
use strict;
use warnings;

sub number2word {
    my $number = shift;
    my $word = "";
    my @numberArray = split ( //, $number );
    my $ones = pop @numberArray;
    my $tens = pop @numberArray;
    my $hundreds = pop @numberArray;
    my $thousands = pop @numberArray;

    if ( $thousands ) {
	$word = getOnes($thousands) . " thousand ";
    }

    if ( $hundreds ) {
	$word = ($tens == 0 && $ones == 0) ? $word . getOnes($hundreds) . " hundred" : $word . getOnes($hundreds) . " hundred and ";
    }

    if ( $tens ) {
	$word = $word . getTens($tens , $ones );
    }

    if ( $ones ) {
	$word = $tens ? $word : $word . getOnes($ones);
    }
    return $word;
}

sub getOnes {
    my $number = shift;
    return "one" if ($number == 1);
    return "two" if ($number == 2);
    return "three" if ($number == 3);
    return "four" if ($number == 4);
    return "five" if ($number == 5);
    return "six" if ($number == 6);
    return "seven" if ($number == 7);
    return "eight" if ($number == 8);
    return "nine" if ($number == 9);
}

sub getTens {
    my $number = shift;
    my $nextNum = shift;
    return "ten" if ($number == 1 && $nextNum == 0 );
	return "eleven" if ($number == 1 && $nextNum == 1);
	return "twelve" if ($number == 1 && $nextNum == 2);
	return "thirteen" if ($number == 1 && $nextNum == 3);
	return "fourteen" if ($number == 1 && $nextNum == 4);
	return "fifteen" if ($number == 1 && $nextNum == 5);
	return "sixteen" if ($number == 1 && $nextNum == 6);
	return "seventeen" if ($number == 1 && $nextNum == 7);
	return "eighteen" if ($number == 1 && $nextNum == 8);
	return "nineteen" if ($number == 1 && $nextNum == 9);
    return "twenty" if ($number == 2 && $nextNum == 0 );
	return "twenty-" . getOnes($nextNum) if ($number == 2 && $nextNum != 0);
    return "thirty" if ($number == 3 && $nextNum == 0 );
	return "thirty-" . getOnes($nextNum) if ($number == 3 && $nextNum != 0);
    return "forty" if ($number == 4 && $nextNum == 0 );
	return "forty-" . getOnes($nextNum) if ($number == 4 && $nextNum != 0);
    return "fifty" if ($number == 5 && $nextNum == 0 );
	return "fifty-" . getOnes($nextNum) if ($number == 5 && $nextNum != 0);
    return "sixty" if ($number == 6 && $nextNum == 0 );
	return "sixty-" . getOnes($nextNum) if ($number == 6 && $nextNum != 0);
    return "seventy" if ($number == 7 && $nextNum == 0);
	return "seventy-" . getOnes($nextNum) if ($number == 7 && $nextNum != 0);
    return "eighty" if ($number == 8 && $nextNum == 0 );
	return "eighty-" . getOnes($nextNum) if ($number == 8 && $nextNum != 0);
    return "ninety" if ($number == 9 && $nextNum == 0 );
	return "ninety-" . getOnes($nextNum) if ($number == 9 && $nextNum != 0);
}

my $number = 1;
my $charCount = 0;
while ( $number <= 1000 ) {
    my $word = number2word($number);
    my @wordArray = split ( //, $word );
    foreach ( @wordArray ) {
	if ( $_ =~ /[a-z]/ ) {
	    $charCount++;
	}
    }
    $number++;
}
print "There are $charCount letters in the numbers 1 through 1000.\n";
