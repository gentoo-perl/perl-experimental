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
use utf8;
use Gentoo::PerlMod::Version qw( gentooize_version );
use Text::Wrap;

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

# FILENAME: show_deptree.pl
# CREATED: 25/10/11 12:15:51 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: show the metadata harvested for a given packages install tree.

# usage:
#
# gen_ebuild.pl DOY/Moose-2.0301-TRIAL
# 
my ($release) = shift(@ARGV);

*STDOUT->binmode(':utf8');
*STDERR->binmode(':utf8');

my %phases;
my %modules;
my %providers;

my $dep_phases = get_dep_phases( $release );
%phases = %{ $dep_phases->{phases} };
%modules = %{ $dep_phases->{modules} };

use Data::Dump qw( pp );
use JSON qw( to_json encode_json );
use Try::Tiny;
use version ();

sub provider_map {
  my ( $module , $version ) = @_;
  my @providers =  metacpan->find_dist_simple( $module );
  my %moduleprov;
 

  my %specialvs; 

  my $wanted_version = version->parse( $version );

  for my $provider ( @providers ) {

    next if $provider->{status} eq 'backpan';
    next if $provider->{maturity} eq 'developer';
#    pp $provider;

    my $dist = $provider->{distribution};
    my $distv = $provider->{version} // 'undef';
    my $gv    = 'undef';
    if ( $distv ne 'undef' ){
      try {
        $gv = gentooize_version( $distv , { lax => 1 } );
      } catch {
        $gv = '???';
      };
    }

    #next if $gv eq '???';

    $moduleprov{$dist} //= [];

    my @provided_matching_mods;
    for my $mod ( @{ $provider->{'_source.module' } } ) {
      next unless $mod->{name} eq $module;
      my $modv = $mod->{version} // 'undef';

      my $got_version = version->parse( $mod->{version} );

     my $dv = $distv;
      #if( $distv ne $modv ) { 
        $dv = sprintf "%s ( %s ) => \"%s\"" , $distv , $gv, $modv;
      #}
      # specials 
      
      $specialvs{newest} //= {};
      $specialvs{oldest} //= {};
      $specialvs{closest} //= {};
      $specialvs{closestx} //= {};
      $specialvs{latest} = [ $dist , $dv ] if not exists $specialvs{latest};
      $specialvs{newest}->{$dist} = $dv if not exists $specialvs{newest}->{$dist};
      $specialvs{oldest}->{$dist} = $dv; 

      #     *STDERR->printf("\e[99m%s > %s , %s\n", $got_version, $wanted_version,  $got_version > $wanted_version );

      if ( not defined $version or $got_version >= $wanted_version  ){
#        *STDERR->printf("\e[99m%s > %s , %s x2\n", $got_version, $version , 1 );
        if ( not defined $specialvs{closestx}->{$dist} ) {
#         *STDERR->printf("\e[99m%s > %s => set \n", $got_version, $version );
          $specialvs{closestx}->{$dist} = $got_version;
          $specialvs{closest}->{$dist} = $dv;
        } else {
          if( $specialvs{closestx}->{$dist} >= $got_version ) {
#           *STDERR->printf("\e[99m%s > %s => << \n", $got_version, $version );

            $specialvs{closestx}->{$dist} = $got_version;
            $specialvs{closest}->{$dist} = $dv;

          }
        }
      }
     #
 
      push @provided_matching_mods, $dv
        if $mod->{name} eq $module;
    }
    push @{ $moduleprov{$dist} }, @provided_matching_mods;
  }
  return \%moduleprov, \%specialvs;
}


for my $module ( keys %modules ) {
  for my $declaration ( @{ $modules{$module} } ) {

    my $depstring = $module;
    if ( $declaration->[1] ne '0.0.0' ) {
      $depstring .= " " . $declaration->[0] . " ( " . $declaration->[1] . " ) " ;
    }

    my $want_string = "$release -> " . $declaration->[2] . " " . $declaration->[3] . " " . $depstring;

 
    my ( $moduleprov, $specialvs ) = provider_map( $module , $declaration->[0]);

    my $pc = scalar keys %$moduleprov;

    my $multi = ( $pc > 1 );
    my $any   = ( $pc > 0 );

    *STDOUT->printf("\e[1;93m%s\e[0m\n", $want_string );

    

    if ( not $any ) {
      *STDOUT->printf("%sWARNING: NO PROVIDER FOUND FOR \"%s\"%s\n", "\e[1;91m", $module, "\e[0m" );
      next;
    }
    if( $multi ){
      *STDOUT->printf("%sWARNING: MULTIPLE PROVIDERS FOUND FOR \"%s\"%s\n", "\e[1;91m", $module, "\e[0m" );
    }


    my $indent = " \e[1;92m*";
    $indent = " \e[1;91m*" if $multi;

    *STDOUT->printf("%s latest: %s => %s\n", $indent, @{ $specialvs->{latest} } );

    for my $prov ( keys %{$moduleprov} ) {
        my $prefix = $depstring . ' in ' . $prov;
        my $lines = xwrap( join q[, ], @{$moduleprov->{ $prov } } );
        my ( @slines ) = split /$/m , $lines;
        $_ =~ s/[\r\n]*//m for @slines;
       *STDOUT->printf(" %s%s -> %s%s\n", "\e[1;92m", $depstring, "\e[0m\e[92m" ,$prov);
       *STDOUT->printf("%s newest: %s\e[0m\n", $indent, $specialvs->{newest}->{$prov});
       *STDOUT->printf("%s oldest: %s\e[0m\n", $indent, $specialvs->{oldest}->{$prov});
       my $v = $specialvs->{closest}->{$prov};
       if( not defined $v ){ $v = 'undef' }
       *STDOUT->printf("%s closest: %s\e[0m\n", $indent, $v );
       for ( @slines ) {

         *STDOUT->printf("%s %s%s -> %s%s\n", $indent, "\e[1;94m", $prov , "\e[0m\e[94m", $_ );
       }
    }
    if ( $multi ){
      *STDOUT->print(" \e[1;91m-\n\n");
    } else {
     *STDOUT->print(" \e[1;92m-\n\n");
    }

}}

use Data::Dump qw( pp );
use JSON qw( to_json encode_json );
#say pp( \%modules,);# { pretty => 1 } );
exit 1;

sub xwrap {
  local $Text::Wrap::break = qr/,/;
  local $Text::Wrap::overflow = 'huge';
  local $Text::Wrap::columns = 128;
  $Text::Wrap::overflow = 'huge';
  my $pre = " ";
  my $lines = wrap( $pre , $pre, @_ );
  return $lines;
}
sub clines {
  my ( $c, $prefix , $lines ) = @_ ; 
  $lines =~ s/^/$prefix>>$c/mg;
  $lines =~ s/$/\e[0m/mg;
  return $lines;
}

sub get_dep_phases {
  my ( $release ) = shift;
  my %phases;
  my %modules;
  my ( $result, ) = get_deps($release);
  for my $dep ( @{ $result->{dependency} } ) {
    my $phase = $dep->{phase};
    my $module = $dep->{module};
    my $required = ( $dep->{relationship} eq 'requires' );

    next unless $required;
   next if $phase eq 'develop';

    $phases{$phase} //= [];
    $modules{$module} //= [];

    my $v = gentooize_version( $dep->{version}, { lax => 1 } );

    push @{ $phases{$phase} }, [ $dep->{module} , $dep->{version} , $v, $dep->{relationship} ];
    push @{ $modules{$module} }, [ $dep->{version}, $v, $dep->{phase} , $dep->{relationship} ];
  }
  return { phases => \%phases, modules => \%modules };
}

sub to_curl {
  my ( $target, $query ) = @_;

  my $query_json = to_json( $query, { pretty => 1 } );
  print 'curl -XPOST api.metacpan.org/v0/' . $target . '/_search -d \'';
  print $query_json;
  print qq{'\n};

}

sub get_deps {
  my ($release) = shift;

  my ( $author, $distrelease );

  $release =~ qr{^([^/]+)/(.*$)};
  ( $author, $distrelease ) = ( "$1", "$2" );
  return metacpan->find_release( $author, $distrelease ); 
}

sub pkg_for_module {
  my ($module) = shift;

}

sub gen_dep {
  state $template = qq{\t# %s%s\n\techo %s\n};
  my ( $module, $version ) = @_;

}

sub help {
  return <<'EOF';
gen_ebuild.pl

USAGE:

  gen_ebuild.pl DOY/Moose-2.0301-TRIAL

  edit ./Moose-2.30.100_rc.ebuild 

  done!

EOF
}
