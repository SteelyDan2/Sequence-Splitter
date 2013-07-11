#!/usr/bin/perl
use warnings;

print "Please enter the sequence you would like to fragment.\n";
  $sequence = <STDIN>;

$seqlength = length $sequence;

print "Please enter the fragment length.\n";
	$fraglength = <STDIN>;

$endloop = $seqlength - $fraglength;

print "The amount of fragments to print is $endloop\n";

print "Enter an ID tag to label each of the outputs (i.e. miRNA).\n";
	$preferred_id = <STDIN>;

$i = 0;
$id = 1;
my @array;

while ($i < $seqlength - $fraglength) {
my $output = substr $sequence, $i, $fraglength;
print ">$preferred_id", "_", "$id", "\n";
print $output, "\n";
$id++;
$i++
}
