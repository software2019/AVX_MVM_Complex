#!/usr/bin/env perl
use warnings;
use strict;
use Getopt::Long;
use File::Copy qw(move);

GetOptions(
  'file|f=s'     => \(my $file = 'MkFlags.ini'),
  'cc=s'         => \(my $cc = "gcc"),
  'cflags=s'     => \(my $cflags = "-Wall -O3"),
);

open(my $fh, '>', $file) or die "Can not open '$file' $!";

# write CC
print $fh "CC = $cc\n";
# write ng
print $fh "CFLAGS = $cflags\n";

close($fh);
#print "All done\n";

