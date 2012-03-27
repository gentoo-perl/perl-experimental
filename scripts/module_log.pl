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
use metacpan qw( mcpan );

my $optparse = optparse->new(
  argv => \@ARGV,
  help => sub {
    return print <<'EOF';
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
  },
);

# FILENAME: module_log.pl
# CREATED: 25/10/11 12:15:51 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Show the full history of a Module across distributions.

# usage:
#
# module_log.pl Class::MOP
#  # emits both Class-MOP and Moose history

use Data::Dump qw( pp );

my ($release) = shift( @{$optparse->extra_opts} );

my (@data) = metacpan->find_dist_simple( $release, $optparse->long_opts );
if ( not $optparse->long_opts->{dump} ) {
  my $result = [ map { $_->{as_string} } @data ];

  use JSON qw( to_json );
  say to_json( $result, { pretty => 1 } );
}
else {
  pp $_ for @data;
}
1;

