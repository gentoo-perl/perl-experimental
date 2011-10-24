use strict;
use warnings;

# FILENAME: metacpan.pm
# CREATED: 25/10/11 00:29:25 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: A thin shim wrapper for metacpan::api with caching.
#
package metacpan;
use File::Spec;

use Sub::Exporter -setup => { exports => [ mcpan => \&build_mcpan ], };

sub build_mcpan {
  my $mcpan;
  return sub {
    $mcpan ||= do {
      require CHI;
      my $cache = CHI->new(
        driver   => 'File',
        root_dir => File::Spec->catdir( File::Spec->tmpdir, 'gentoo-metacpan-cache' ),
      );
      require WWW::Mechanize::Cached;
      my $mech = WWW::Mechanize::Cached->new(
        cache     => $cache,
        timeout   => 20000,
        autocheck => 1,
      );
      require HTTP::Tiny::Mech;
      my $tinymech = HTTP::Tiny::Mech->new( mechua => $mech );
      require MetaCPAN::API;

      MetaCPAN::API->new( ua => $tinymech );

    };
    return $mcpan;

  };
}

1;

