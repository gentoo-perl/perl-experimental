#!/usr/bin/env perl

eval 'echo "Called with something not perl"' && exit 1    # Non-Perl protection.
  if 0;

use 5.14.2;
use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
use env::gentoo::perl_experimental;
use metacpan qw( mcpan );

my $flags;
my $singleflags;

@ARGV = grep { defined } map {
  $_ =~ /^--(\w+)/
    ? do { $flags->{$1}++; undef }
    : do {
    $_ =~ /^-(\w+)/
      ? do { $singleflags->{$1}++; undef }
      : do { $_ }
    }
} @ARGV;

if ( $flags->{help} or $singleflags->{h} ) { print help(); exit 0; }

sub help {
  return <<'EOF';
module_log.pl

USAGE:

  module_log.pl Class::MOP::Class

    # See Class::MOP::Class started in Class-MOP and moved to Moose
    #
    # NOTE: Due to a caveat in PAUSE with how indexing works, Modules may look
    # like they're comming from weird places.
    #
    # this is usually due to somebody lexically hacking a foreign package like so:
    #
    #   { package Foo; blah blah blah }
    #
    # Unfortunately, PAUSE indexer sees that 'package Foo' and then deems this a place 'Foo' is defined.
    #
    # Usually that doesn't pose a problem, as the author who releases the containing package rarely has
    # AUTHORITY permssion on the hacked package, so it doesn't get indexed. ( ie: HTTP::Request::Common )
    #
    # However, in the event the author has permissions to publish 'Foo', the indexer runs the risk
    # of taking that tiny little package declaration as *the most recent version of that package*
    # and is likely to try installing it.  ( ie: HTTP::Message )
    #
    # For the most part, the "indexed but not authorised" case is eliminated by the query,
    # but we have to weed out some false matches client side due to a current API limitation.
    #
    # but you can turn this weeding off for diagnostic reasons with
    #
    # module_log.pl --notrim HTTP::Message
    #
    # PROTIP: Usually when people do this foreign hacking, they don't define a VERSION in the same context
    # which thankfully gives you the ability to assume its not sourceable.
    #
    # Try this:
    #
    # module_log.pl --notrim HTTP::Request::Common
    #
    # and see all the hacking in Apache-TestRequest turn up =)
    #

EOF
}

# FILENAME: module_log.pl
# CREATED: 25/10/11 12:15:51 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Show the full history of a Module across distributions.

# usage:
#
# module_log.pl Class::MOP
#  # emits both Class-MOP and Moose history

use Data::Dump qw( pp );

my ($release) = shift(@ARGV);

my $result = [ map { $_->{as_string} } metacpan->find_dist_simple( $release, $flags ) ];

use JSON qw( to_json );
say to_json( $result, { pretty => 1 } );
1;

sub pkg_for_module {
  my ($module) = shift;

}

sub gen_dep {
  state $template = qq{\t# %s%s\n\techo %s\n};
  my ( $module, $version ) = @_;

}

