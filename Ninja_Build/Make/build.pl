#!/usr/bin/env perl
use warnings;
use strict;
use Cwd qw(abs_path);

my $ownpath = abs_path($0);
$ownpath =~ m{^(.*?)/Make/.*} or die("Wrong install dir for b script!\n");
my $rootdir = $1;
require "$rootdir/Make/NinjaBuild.pl";
#change to $rootdir
chdir $rootdir;

# set $rootdir and write build rules
build_rules($rootdir);

###############################################################################
# Benchmarks
###############################################################################
{
  my $topdir = "TestProgram";
  my %exes = (
    "main" => [ "main.c" ]
  );

  add_exes($topdir, \%exes);
  # print "default $topdir\n";
}

# my @libs = ("libhr.a"); #this is for later programs to use
# ###############################################################################
# # HMC
# ###############################################################################
# {
#   my $topdir = "HMC";
#   my %exes = (
#     "hmc" => [ "hmc.c", "hmc_utils.c", ],
#   );

#   add_exes($topdir, \%exes, \@libs);
#   print "default $topdir\n";
# }