#!/usr/bin/env perl

eval 'echo "Called with something not perl"' && exit 1    # Non-Perl protection.
  if 0;

use 5.12.2;
use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib";
use env::gentoo::perl_experimental;
use optparse;
use utf8;
use Data::Dump qw( pp );
use Gentoo::Overlay;

# FILENAME: aggregate_tree.pl
# CREATED: 29/02/12 07:37:54 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Connect all the cpan id's from the metadata.xml

use XML::Smart;

my $env  = env::gentoo::perl_experimental->new();
my $opts = optparse->new(
  argv => \@ARGV,
  help => sub { print <DATA>; return },
);
my $root = $env->root;
use Path::Class::Dir;

if ( defined $opts->long_opts->{root} ) {
  $root = Path::Class::Dir->new( $opts->long_opts->{root} );
}
my $overlay = Gentoo::Overlay->new( path => $root );

use JSON;

my $data;

my $packages = $data->{ $overlay->name } = {};

my $encoder = JSON->new()->pretty->utf8->canonical;

my $dest = \*STDOUT;
if ( not $opts->long_opts->{output} or $opts->long_opts->{output} eq '-' ) {
  $dest = \*STDOUT;
}
else {
  use Path::Class::File;
  my $file = Path::Class::File->new( $opts->long_opts->{output} )->absolute();
  $dest = $file->openw( iomode => ':utf8' );
}

my $cat; 
$|++;
$overlay->iterate(
  'packages' => sub {
    my ( $self, $c ) = @_;
    my $CP = $c->{category_name} . '/' . $c->{package_name};
    my $xmlfile = $root->subdir( $c->{category_name}, $c->{package_name} )->file('metadata.xml');
    if ( not -e $xmlfile ) {
      warn "\e[31mNo metadata.xml for $CP\e[0m\n";
      return;
    }
    if( $c->{category_name} ne $cat ) {
      *STDERR->print("\nProcessing " . $c->{category_name}  . " :");
      $cat = $c->{category_name};
    }
    *STDERR->print(".");
    my $XML = XML::Smart->new( $xmlfile->absolute()->stringify() );
    if ( not exists $XML->{pkgmetadata} ) {
      warn "\e[31m<pkgmetadata> missing in $xmlfile\e[0m\n";
      return;
    }
    if ( not exists $XML->{pkgmetadata}->{upstream} ) {
      # warn "<pkgmetadata>/<upstream> missing in $xmlfile\n";
      return;
    }
    if ( not exists $XML->{pkgmetadata}->{upstream}->{'remote-id'} ) {

      # warn "<pkgmetadata>/<upstream>/<remote-id> missing in $xmlfile\n";
      return;
    }
    if ( not exists $XML->{pkgmetadata}->{upstream}->{'remote-id'}->{type} ) {

      #        warn "remote type not specified for $CP";
      return;
    }
    if ( not $XML->{pkgmetadata}->{upstream}->{'remote-id'}->{type} eq 'cpan' ) {

      #        warn "$CP: Not a CPAN remote: " .    $XML->{pkgmetadata}->{upstream}->{'remote-id'}->{type}    ;
      return;
    }
    my $upstream = $XML->{pkgmetadata}->{upstream}->{'remote-id'}->content();
    $packages->{$upstream} = $CP;
    *STDERR->print("\e[32m $CP -> $upstream\e[0m ");
  }
);

my $out;
if ( not $opts->long_opts->{format} ) {
  $opts->long_opts->{format} = "JSON";
}
if ( $opts->long_opts->{format} eq "JSON" ) {
  $out = $encoder->encode($data);
}
elsif ( $opts->long_opts->{format} eq 'distlist' ) {
  $out = join "\n", keys %{$packages};
}
else {
  die "Unknown format type " . $opts->long_opts->{format};
}

$dest->print($out);

0;

__DATA__

This script scrapes the perl repository and finds all the metadata.xml files
  and makes a mapping file connecting categories to upstream dists.

Usage:

  aggregate_tree.pl

  By default uses the perl-experimental overlay as a working dir, and emits JSON to stdout

  aggregate_tree.pl 
  
      --root="/path/to/some/root"

      Specifiy another root to scan ( ie: /usr/portage )
  
      --format=JSON     # Emit JSON  ( Default )
      --format=distlist # Emit a list of CPAN Dist Names

      --output=-                # Write to standard output ( Default ) 
      --output="/path/to/file"  # Write to the specified file


