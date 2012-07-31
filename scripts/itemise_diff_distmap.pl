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

my $category = "";
my $package = "";
my $repo = "";

my $dstash = {};
my $stash_key = "";
my $in_versions;

sub process_stash {
  my ( $key ) = @_;
  #say "* $key";
  if ( not exists $dstash->{$key} ) {
    #say "-- no stash";
    return;
  }
  if ( not keys %{$dstash->{$key}} ) {
    #say "-- no keys";
    return;
  }
  for my $keyname ( keys %{$dstash->{$key}} ) {
      my $value = $dstash->{$key}->{$keyname};
      if ( $value eq '+' ) {
        say "newversion   $key @ $keyname";
      } else {
        say "removed      $key @ $keyname";
      }
  }
}
sub set_package {
  my ( $polarity, $_package ) = @_;
  $package = $_package;
  $in_versions = undef;
}

sub set_repo {
  my ( $polarity, $_repo ) = @_;
  $repo = $_repo;
  say "\nADD       $category/${package}::$repo\n" if $polarity eq '+';
  say "\nTREECLEAN $category/${package}::$repo\n" if $polarity eq '-';

}

sub set_category {
  my ( $_category ) = @_;
  $category = $_category;
  $package = "";
  $in_versions = undef;
}

sub set_version_plus {
  my ( $key, $version ) = @_;
  if ( not exists $dstash->{$key} ){ 
    $dstash->{$key} = {};
  }
  if ( not exists $dstash->{$key}->{$version} ) {
    $dstash->{$key}->{$version} = '+';
    return;
  }
  if ( $dstash->{$key}->{$version} eq '-' ) {
    delete $dstash->{$key}->{$version};
    return;
  }
  die "Wut";
}
sub set_version_minus {
  my ( $key, $version ) = @_;
  if ( not exists $dstash->{$key} ){ 
    $dstash->{$key} = {};
  }
  if ( not exists $dstash->{$key}->{$version} ) {
    $dstash->{$key}->{$version} = '-';
    return;
  }
  if ( $dstash->{$key}->{$version} eq '+' ) {
    delete $dstash->{$key}->{$version};
    return;
  }
  die "Wut";
}


while ( defined( my $line = <$fh> ) ) {
  chomp $line;
  push @seen, $line;
  my $last_pkg = $package;

  $stash_key = "$category/${package}::$repo";

  if ( $line =~ /^([+-]|)\s+"category"\s+:\s+"([^"]+)"/ ) {
    set_category($2);
  }
  if ( $line =~ /^([+-]|)\s+"package"\s+:\s+"([^"]+)"/ ) {
    set_package( $1, $2 );
  }
  if ( $line =~ /^([+-]|)\s+"repository"\s+:\s+"([^"]+)"/ ) {
    set_repo($1, $2 );
  }

  if ( $last_pkg ne $package and $last_pkg ne "" ) {
    process_stash( $stash_key );
    next;
  }


  if ( $line =~ /^([+-]|)\s+"versions_gentoo"\s+:\s+\[/ ) {
    $in_versions = 1;
    next;
  }
  if ( $in_versions && $line =~ /^([+-]|)\s+\]/ ){
    $in_versions = undef;
    next;
  }

  next if not $in_versions;

  if ( $in_versions && $line =~ /^([+-])\s+"([^"]+)"/ ){
     my $polarity = $1;
     my $version = $2;
     if ( $polarity eq '+' ) {
       set_version_plus( $stash_key, $version );
       next;
     } else {
       set_version_minus( $stash_key, $version );
       next;
     }
  }

}
process_stash($stash_key);
