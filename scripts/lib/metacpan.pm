use strict;
use warnings;

# FILENAME: metacpan.pm
# CREATED: 25/10/11 00:29:25 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: A thin shim wrapper for metacpan::api with caching.
#
package metacpan;
use File::Spec;

use Sub::Exporter -setup => { exports => ['mcpan'], };

my $mcpan;

sub mcpan {
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
    }
}

sub find_dist_all {
  my ( $class, $module, $opts ) = @_;

  my @wanted_terms = (
    { term => { 'file.module.authorized' => 1 } },
    { term => { 'file.module.indexed'    => 1 } },
    { term => { 'file.module.name'       => $module } },
  );

  my @unwanted_terms = ( { terms => { 'file.distribution' => [qw( libwww-perl HTTP-Message )] } } );

  my $simple_filter = { bool => { must => [@wanted_terms] } };
  my $nested_filer = {
    nested => {
      path  => 'file.module',
      query => { bool => { must => [@wanted_terms] } },
    }
  };

  my $query_nondirs = { term => { directory => 0 } };
  my $fields = [
    'status',  'date',           'author',           'maturity',     'indexed',      'documentation',
    'id',      '_source.module', 'authorized',       'release_id',   'version',      'name',
    'release', 'path',           'version_numified', '_source.stat', 'distribution', 'level',
    'sloc',    'abstract',       'slop',             'mime'
  ];

  my $q = {
    query  => $query_nondirs,
    filter => $simple_filter,
    fields => $fields,
    sort   => { 'file.date' => 'desc' },
    size   => 9999,
  };

  if ( $opts->{mangle} ) {
    $opts->{mangle}->( $q, );
  }

  my $results = mcpan->post( file => $q );

  if ( not $opts->{notrim} ) {
    $results->{hits}->{hits} = [ grep { _skip_result( $_, $module ) } @{ $results->{hits}->{hits} } ];
  }

  return map { $_->{fields} } @{ $results->{hits}->{hits} };


}
use Data::Dump qw( pp );
sub find_dist_simple {
  my ( $class, $module, $opts ) = @_;
  return map {
    my $i = $_;
    my ( $j ) = grep { $_->{name} eq $module } @{ $i->{'_source.module'} };
    my $x = {
      %{$i},
      mod_path => ( sprintf q{%s/%s/%s}, $i->{author}, $i->{release}, $i->{path} ),
      mod      => [ $j->{name},          $j->{version} ],
    };
    $x->{as_string} = $j->{name} . ' ' . ($j->{version}//'') . ' in ' . $x->{mod_path};
    $x;
  } $class->find_dist_all( $module, $opts );
}

sub _skip_result {
  my ( $result, $module ) = @_;
  return 1 if not $result->{fields};
  return 1 if not $result->{fields}->{'_source.module'};
  for my $package ( @{ $result->{fields}->{'_source.module'} } ) {
    return
      if $package->{name} eq $module
        and ( ( not $package->{authorized} ) or ( not $package->{indexed} ) );
  }
  return 1;
}

1;

