#!/usr/bin/env perl

use strict;
use warnings;
use 5.12.1;

# FILENAME: itemise_diff.pl
# CREATED: 17/04/12 04:06:11 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Show the relevant parts from git diff

my $fh;
if ( not @ARGV ) {
  $fh = *STDIN;
}
else {
  open $fh, '<', $ARGV[0] or die;
}

my @seen;
my @seen_status;

my $archive;

while ( defined( my $line = <$fh> ) ) {
  chomp $line;
  push @seen, $line;
  if ( $line =~ /^([+-]|)\s+"archive_canon"\s+:\s+"([^"]+)"/ ) {
    my $polarity = $1;
    $archive = $2;
    say "new: $archive" if $polarity eq '+';
  }
  if ( $line =~ /^([+-])\s+"status"\s+:\s+"([^"]+)"/ ) {
    my ( $stat, $value ) = ( "$1", "$2" );
    my $current = [ $stat, $value , $archive];
    push @seen_status, $current;
    my $has_prev = exists $seen_status[-2];
    my $prev;
    $prev = $seen_status[-2] if $has_prev;

    if ( $has_prev and $current->[1] eq 'backpan' and $prev->[1] ne 'backpan' and $prev->[2] eq $current->[2] and $current->[0] eq '+' and $prev->[0] eq '-' ) {
      say "del: $archive";
    }
  }
}
