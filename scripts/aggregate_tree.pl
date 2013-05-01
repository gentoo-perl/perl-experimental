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
use Gentoo::Perl::Distmap;
use Gentoo::Perl::Distmap::RecordSet;
use Gentoo::Perl::Distmap::FromOverlay;

# FILENAME: aggregate_tree.pl
# CREATED: 29/02/12 07:37:54 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Connect all the cpan id's from the metadata.xml

use XML::Smart;

my ( $env, $cat , $dm );

main();

sub main {
  $env = env::gentoo::perl_experimental->new();
  my $opts = optparse->new(
    argv => \@ARGV,
    help => sub { print <DATA>; return },
  );
  my $tree;

  if ( $opts->long_opts->{'from-ini'} ) {
    require Gentoo::Overlay::Group::INI;
    $tree = Gentoo::Overlay::Group::INI->load_named('aggregate_tree')->overlay_group;
  }
  else {
    require Gentoo::Overlay::Group;
    $tree = Gentoo::Overlay::Group->new();
    $tree->add_overlay( set_root( $opts->long_opts->{root} ));
  }

  my $dest = open_output( $opts->long_opts->{output} );
  my $mapper = Gentoo::Perl::Distmap::FromOverlay->new( overlay => $tree );

  $|++;
  local *Gentoo::Perl::Distmap::FromOverlay::_on_enter_category = sub {
    print "\r" . $_[1] . '     ';
    print "\r" . $_[1] . ' ';
  };
  my @symbols = ( '/' , '-', '\\', '|' );
  local *Gentoo::Perl::Distmap::FromOverlay::_on_enter_package = sub {
    my $next_symbol = shift @symbols;
    push @symbols, $next_symbol;
    print $next_symbol . "\b";
  };

  local *Gentoo::Perl::Distmap::FromOverlay::_on_enter_ebuild = sub {
    print ".> \b\b" ;
  };


  $dm = $mapper->distmap;

  $dest->print( make_format( $opts->long_opts->{format} ) );

}

sub set_root {
  my ($root) = @_;
  return $env->root unless defined $root;
  require Path::Class::Dir;
  return Path::Class::Dir->new($root);
}

sub open_output {
  my ($output) = @_;
  return \*STDOUT if not defined $output;
  return \*STDOUT if $output eq '-';
  require Path::Class::File;
  my $file = Path::Class::File->new($output)->absolute();
  return $file->openw( iomode => ':utf8' );
}

sub make_format {
  my ($format) = @_;
  $format ||= 'JSON';
  if ( $format eq 'JSON' ) {
    goto &make_format_json;
  }
  if ( $format eq 'distlist' ) {
    goto &make_format_distlist;
  }
  die "Unknown format type " . $format;
}

sub make_format_json {
  return $dm->save( string =>, );
}

sub make_format_distlist {
  return join qq{\n}, $dm->mapped_dists;
}

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

      --from-ini

      Get the overlays to scan from a configuration named 'aggregate_tree' in a config
      loaded by Gentoo::Overlay::Group::INI

      ie:  ~/.config/Perl/Gentoo-Overlay-Group-INI/config.ini

        [Overlays / aggregate_tree]
        directory = /var/paludis/repositories/perl-git/
        directory = /usr/portage/ 
  
      --format=JSON     # Emit JSON  ( Default )
      --format=distlist # Emit a list of CPAN Dist Names

      --output=-                # Write to standard output ( Default ) 
      --output="/path/to/file"  # Write to the specified file


