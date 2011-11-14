use 5.010000;
use strict;
use warnings;

package deptools;

# FILENAME: deptools.pm
# CREATED: 31/10/11 09:30:24 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Miscelanous bits for computing deps for Perl modules

sub virtual($) { return 'virtual/perl-' . shift }
sub lang($)    { return 'dev-lang/' . shift }
sub perl($)    { return 'dev-perl/' . shift }

sub _vmap_langs {
  return ( 'perl', 'perl_debug', );
}

sub _vmap_perl_native {
  return (
    'Archive-Tar',       'Attribute-Handlers',   'AutoLoader',           'CGI',
    'Class-ISA',         'Compress-Raw-Bzip2',   'Compress-Raw-Zlib',    'CPAN-Meta',
    'CPAN-Meta-YAML',    'Data-Dumper',          'DB_File',              'Digest-MD5',
    'Digest-SHA',        'Encode',               'ExtUtils-CBuilder',    'ExtUtils-Command',
    'ExtUtils-Install',  'ExtUtils-MakeMaker',   'ExtUtils-Manifest',    'ExtUtils-ParseXS',
    'File-Path',         'File-Temp',            'Filter',               'Getopt-Long',
    'i18n-langtags',     'IO',                   'IO-Compress',          'IO-Zlib',
    'IPC-Cmd',           'JSON-PP',              'libnet',               'Locale-MakeText-Simple',
    'Math-BigInt',       'Math-BigInt-FastCalc', 'Memoize',              'MIME-Base64',
    'Module-Build',      'Module-CoreList',      'Module-Load',          'Module-Load-Conditional',
    'Module-Loaded',     'Module-Metadata',      'Module-Pluggable',     'Package-Constants',
    'Params-Check',      'parent',               'Parse-CPAN-Meta',      'Perl-OSType',
    'Pod-Escapes',       'podlators',            'Pod-Simple',           'Safe',
    'Scalar-List-Utils', 'Storable',             'Switch',               'Sys-Syslog',
    'Term-ANSIColor',    'Test',                 'Test-Harness',         'Test-Simple',
    'Text-Balanced',     'Text-Tabs+Wrap',       'Thread-Queue',         'threads',
    'Thread-Semaphore',  'threads-shared',       'Time-HiRes',           'Time-Local',
    'Time-Piece',        'version',              'Version-Requirements', 'XSLoader',
  );
}

sub _vmap_perl_strange {
  return (
    'Digest'          => virtual 'digest-base',
    'PathTools'       => virtual 'File-Spec',
    'Locale-MakeText' => virtual 'locale-maketext',
    'Net-Ping'        => virtual 'net-ping',
    'Pod-Parser'      => virtual 'PodParser',
    'Config-General'  => perl 'config-general',
    'CGI-Simple'      => perl 'Cgi-Simple',
    'Text-Template'   => perl 'text-template',
  );
}

sub _vmap_overlay_native {
  return (
    (
      'Archive-Extract',    'B-Debug',           'B-Lint',              'constant',
      'CPAN',               'CPANPLUS',          'CPANPLUS-Dist-Build', 'Devel-DProf',
      'Devel-PPPort',       'Devel-SelfStubber', 'Dumpvalue',           'ExtUtils-Constant',
      'ExtUtils-MakeMaker', 'File-Fetch',        'Filter-Simple',       'HTTP-Tiny',
      'i18n-langtags',      'if',                'IPC-SysV',            'Log-Message',
      'Log-Message-Simple', 'Math-Complex',      'Module-CoreList',     'NEXT',
      'Object-Accessor',    'Pod-LaTeX',         'Pod-Perldoc',         'Pod-Plainer',
      'SelfLoader',         'Term-UI',           'Unicode-Collate',     'Unicode-Normalize',
    ),
    ( 'Exporter', 'base', )
  );
}

sub _vmap {
  return (
    ( map { $_, lang $_ } _vmap_langs() ),
    ( map { $_, virtual $_ } _vmap_perl_native(), _vmap_overlay_native() ),
    _vmap_perl_strange(),
  );
}

sub gentooize_pkg {
  my ( $pkg, $version ) = @_;
  state $vmap = { _vmap() };
  my $outpkg = 'dev-perl/' . $pkg;
  if ( exists $vmap->{$pkg} ) {
    $outpkg = $vmap->{$pkg};
  }
  if ( not $version or $version eq '0.0.0' ) {
    return $outpkg;
  }
  return '\\>=' . $outpkg . '-' . $version;
}

sub provider_map {

  require dep::wanted;
  my $wanted = dep::wanted->new(
    module         => $_[0],
    version_string => $_[1],
  );
  my @providers = $wanted->provides;

  my %moduleprov;

  require dep::specialvs;
  my $specialvs = dep::specialvs->new();

  for my $provider (@providers) {

    next if $provider->is_backpan;
    next if $provider->is_dev;

    next unless $provider->can_gv;

    my @provided_matching_mods;
    for my $mod ( @{ $provider->modules } ) {

      next unless $mod->name eq $wanted->module;

      # specials
      $specialvs->set_latest_mod( $provider->distribution, $mod );
      $specialvs->set_newest_mod( $provider->distribution, $mod );
      $specialvs->set_oldest_mod( $provider->distribution, $mod );

      if ( $wanted->no_version_dep or $mod->version >= $wanted->version ) {
        $specialvs->set_closest_mod( $provider->distribution, $mod );
      }

      push @provided_matching_mods, $mod->debug_string
        if $mod->name eq $wanted->module;
    }
    $moduleprov{ $provider->distribution } //= [];
    push @{ $moduleprov{ $provider->distribution } }, @provided_matching_mods;
  }
  return \%moduleprov, $specialvs;
}

sub get_deps {
  my ($release) = shift;

  my ( $author, $distrelease );

  $release =~ qr{^([^/]+)/(.*$)};
  ( $author, $distrelease ) = ( "$1", "$2" );
  require metacpan;
  return metacpan->find_release( $author, $distrelease );
}

sub get_dep_phases {
  my ($release) = shift;
  my %phases;
  my %modules;
  my ( $result, ) = get_deps($release);
  for my $dep ( @{ $result->{dependency} } ) {
    my $phase    = $dep->{phase};
    my $module   = $dep->{module};
    my $required = ( $dep->{relationship} eq 'requires' );

    #next unless $required;
    #next if $phase eq 'develop';

    $phases{$phase}   //= [];
    $modules{$module} //= [];

    require Gentoo::PerlMod::Version;
    my $v = Gentoo::PerlMod::Version::gentooize_version( $dep->{version}, { lax => 1 } );

    push @{ $phases{$phase} }, [ $dep->{module}, $dep->{version}, $v, $dep->{relationship} ];
    push @{ $modules{$module} }, [ $dep->{version}, $v, $dep->{phase}, $dep->{relationship} ];
  }
  return { phases => \%phases, modules => \%modules };
}

sub dispatch_dependency_handler {

  my ( $release, $module, $declaration, $feeder ) = @_;

  my ( $moduleprov, $specialvs ) = provider_map( $module, $declaration->[0] );

  my $pc = scalar keys %$moduleprov;

  my $multi = ( $pc > 1 );
  my $any   = ( $pc > 0 );

  $feeder->begin_dep( $release, $module, $declaration );

  if ( $module eq 'perl' ) {
    $feeder->perl_dep( $module, $declaration, gentooize_pkg( 'perl', $declaration->[1] ) );
    return $feeder->done;
  }

  if ( not $any ) { $feeder->evt_not_any( $module, $declaration ); }

  if ($multi) { $feeder->evt_multi( $module, $declaration ); }

  #pp {
  #  moduleprov => $moduleprov,
  #  specialvs => $specialvs,
  #  release => $release,
  #  module => $module,
  #  declaration => $declaration,
  #  latest => $specialvs->latest,
  #};
  if ( $specialvs->has_latest ) {
    $feeder->set_latest( $specialvs->latest, gentooize_pkg( $specialvs->latest->[0], $declaration->[1] ) );
  }

  for my $prov ( keys %{$moduleprov} ) {

    my $data = {
      release     => $release,
      versions    => $moduleprov->{$prov},
      provider    => $prov,
      gentoo_pkg  => gentooize_pkg($prov),
      newest      => $specialvs->newest->{$prov},
      newestx     => $specialvs->newestx->{$prov},
      oldest      => $specialvs->oldest->{$prov},
      oldestx     => $specialvs->oldestx->{$prov},
      has_closest => exists $specialvs->closest->{$prov},
      closest     => $specialvs->closest->{$prov},
      closestx    => $specialvs->closestx->{$prov},
      declaration => $declaration,
      module      => $module,
    };
    $feeder->provider_group($data);
  }
  $feeder->done( $module, $declaration );

}
1;

