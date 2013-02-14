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
      driver           => 'File',
      root_dir         => File::Spec->catdir( File::Spec->tmpdir, 'gentoo-metacpan-cache' ),
      expires_in       => '6 hour',
      expires_variance => 0.2,
    );
    require WWW::Mechanize::Cached;
    my $mech;

    if ( defined $ENV{WWW_MECH_NOCACHE} ) {
      $mech = LWP::UserAgent->new();
    }
    else {
      $mech = WWW::Mechanize::Cached->new(
        cache     => $cache,
        timeout   => 20000,
        autocheck => 1,
      );
    }
    if ( defined $ENV{WWW_MECH_DEBUG} ) {
      require Data::Dump;
      $mech->add_handler(
        "request_send",
        sub {
          if ( $ENV{WWW_MECH_DEBUG} > 1 ) {
            warn shift->as_string;
          }
          else {
            warn shift->dump;
          }
          return;
        }
      );
      $mech->add_handler(
        "response_done",
        sub {
          if ( $ENV{WWW_MECH_DEBUG} > 1 ) {
            warn shift->content;
          }
          else {
            warn shift->dump;
          }
          return;
        }
      );
    }
    require HTTP::Tiny::Mech;
    my $tinymech = HTTP::Tiny::Mech->new( mechua => $mech );
    require MetaCPAN::API;

    MetaCPAN::API->new( ua => $tinymech );
    }
}

#
# ->find_dist_all( $module::name , \%opts ) # returns an array of results.
#
# $opts{notrim} = 1 to skip the postprocessing filter that eliminates false matches.
#
# $opts{mangle} = sub {
#    my $query = shift;
#    # You can optionally do this to modify the query before it is performed.
# };
#
# $opts{latest} = 1  # return only latest versions of dists
#
# $opts{method} = 'simple' # non-nested query ( introduces bad results )
# $opts{method} = 'nested' # works like notrim but serverside
#
# $opts{version} = 1 # return version information
#
# $opts{'sort-latest'} = 1 # sort by status == latest first.
#
# Array items are each a subset of a 'file' entry which contains information
# about the distribution that file was in.
#
# each 'file' entry will have at least one 'file.module' entry that conforms to
#
#   module.name == $module::name  && module.authorized == true && module.indexed == true
#
# Essentially returning exactly what CPAN does.
#
sub _find_dist_all_apply_nest {
  my ( $class, $q, $module, $latest ) = @_;
  my $module_rules =
    [ { term => { 'module.authorized' => 1 } }, { term => { 'module.indexed' => 1 } },
    { term => { 'module.name' => $module } }, ];
  my $nest = {
    path  => 'module',
    query => { constant_score => { filter => { bool => { must => $module_rules, } } } },

    #size  => 5,
  };
  my $must = [ { nested => $nest } ];
  if ($latest) {
    unshift @{$must}, { term => { 'status' => 'latest' } };
  }
  $q->{query} = { constant_score => { query => { bool => { must => $must } } } };

}

sub find_dist_all {
  my ( $class, $module, $opts ) = @_;

  my $fields = [
    'status',  'date',           'author',           'maturity',     'indexed',      'documentation',
    'id',      '_source.module', 'authorized',       'release_id',   'version',      'name',
    'release', 'path',           'version_numified', '_source.stat', 'distribution', 'level',
    'sloc',    'abstract',       'slop',             'mime',         'directory',
  ];

  my $q = {
    sort => [ { 'file.date' => 'desc' }, ],
    size => 5000,
  };

  $q->{script_fields} = { 'latest' => { 'metacpan_script' => 'status_is_latest' } };

  #$q->{script_fields} =  { 'latest' => { script => q{ doc[ 'status' ].value == 'latest' } } }

  if ( $opts->{'sort-latest'} ) {

    #$q->{script_fields} = { 'latest' => { script => q{ doc[ 'status' ].value == 'latest' } } };
    unshift @{ $q->{sort} },
      {
      '_script' => {
        script => q{ doc['status'].value == 'latest' ? 1 : 0 },
        type   => 'number',
        order  => 'desc',
      }
      };
  }

  if ( not defined $opts->{method} or $opts->{method} eq 'nested' ) {
    $class->_find_dist_all_apply_nest( $q, $module, $opts->{latest} );
  }
  else {

    my $document_rules = [
      { term => { 'file.module.authorized' => 1 } },
      { term => { 'file.module.indexed'    => 1 } },
      { term => { 'file.module.name'       => $module } },
      { term => { 'directory'              => 0 } },
      ( $opts->{latest} ? { term => { 'status' => 'latest' } } : () ),
    ];

    $q->{query} = { constant_score => { filter => { bool => { must => $document_rules } } } };
  }

  if ( $opts->{version} ) {
    $q->{version} = 1;
    push @{$fields}, '_version';
  }

  $q->{fields} = $fields;

  if ( $opts->{mangle} ) {
    $opts->{mangle}->( $q, );
  }

  my $results = mcpan->post( "file/_search" => $q );

  if ( not $opts->{notrim} ) {
    $results->{hits}->{hits} = [ grep { _skip_result( $_, $module ) } @{ $results->{hits}->{hits} } ];
  }

  return map { $_->{fields} } @{ $results->{hits}->{hits} };

}

# ->find_dist_simple( $module::name , \%opts ) # returns an array of results.
#
# A convenience wrapper around find_dist_all
#
# Adds 3 records not already in metacpan to the result for conveninece.
#
# $record{mod_path}  = "AUTHOR/Release-Name-1.2.3-TRIAL/lib/path/to/module.pm"
# $record{mod}       = [ "path::to::module" , "1.9.9" ]
#
# $record{as_string} =  "path::to::module 1.9.9 in AUTHOR/Release-Name-1.2.3-TRIAL/lib/path/to/module.pm"
#
#
sub find_dist_simple {
  my ( $class, $module, $opts ) = @_;
  return map {
    my $i = $_;
    my ($j) = grep { $_->{name} eq $module } @{ $i->{'_source.module'} };
    my $x = {
      %{$i},
      mod_path => ( sprintf q{%s/%s/%s}, $i->{author}, $i->{release}, $i->{path} ),
      mod      => [ $j->{name},          $j->{version} ],
    };
    $x->{as_string} = $j->{name} . ' ' . ( $j->{version} // '' ) . ' in ' . $x->{mod_path};
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

#
# ->find_release( 'DOY' , 'Moose-2.0301-TRIAL' )
#
# Returns the content of a /release/ entry matching that criteria.
#
# Will return an array just in case there's more than one, but its not likely.
#
sub find_release {
  my ( $class, $author, $distrelease, $opts ) = @_;
  my @terms = ( { term => { author => $author } }, { term => { name => $distrelease } }, );
  my $filter = { filter => { and => [@terms] } };
  my $q = {
    explain => 1,
    query   => { constant_score => $filter },
  };
  my @query = ( "release/_search" => $q );

  if ( $opts->{mangle} ) {
    $opts->{mangle}->( $q, );
  }

  my $results = mcpan->post(@query);

  return map { $_->{_source} } @{ $results->{hits}->{hits} };

}

1;

