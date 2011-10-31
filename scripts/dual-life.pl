#!/usr/bin/env perl 

use 5.14.2;
use strict;
use warnings;

# FILENAME: dual-life.pl
# CREATED: 01/11/11 05:49:45 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: find/report dual-life modules.
use Module::CoreList;
use Data::Dump qw( pp );
use FindBin;
use version;

use lib "$FindBin::Bin/lib";

my $pv = shift(@ARGV);

my $perls = {
  masked_future => CoreGroup->new( name => 'masked_future', perls => [qw( 5.14.0 5.14.1 5.14.2 )] ),
  masked_past   => CoreGroup->new( name => 'masked_past',   perls => [qw( 5.8.8 5.10.1 )] ),
  testing       => CoreGroup->new( name => 'testing',       perls => [qw()] ),
  stable        => CoreGroup->new( name => 'stable',        perls => [qw( 5.12.3 5.12.4 )] ),
};

pp $perls->{masked_future}->get_perl(qw( 5.14.2 ))->delta( $perls->{stable}->get_perl(qw( 5.12.4 )) );

#for my $group ( $perls->{masked_future} ) {
#  for my $perl ( values $group->perls ) {
#    for my $module ( values $perl->modules ) {
#      say $module->to_s;
#    }
#  }
#}

#pp $perls;

exit 0;

BEGIN {

  package CoreList::Module;
  use Moose;
  has name      => ( isa => 'Str',        is => 'rw', required => 1 );
  has version   => ( isa => 'Maybe[Str]', is => 'rw', required => 1 );
  has perl      => ( isa => 'Str',        is => 'rw', required => 1 );
  has coregroup => ( isa => 'Str',        is => 'rw', required => 1 );
  __PACKAGE__->meta->make_immutable;

  sub to_s {
    my $self = shift;
    return sprintf '%s %s %s %s', $self->coregroup, $self->perl, $self->name, $self->version // 'undef';
  }

}

BEGIN {

  package CoreList::Single;
  use Moose;

  has 'perl' => ( isa => 'Str', is => 'rw', required => 1 );

  has 'modules' => (
    isa        => 'HashRef[CoreList::Module]',
    is         => 'rw',
    lazy_build => 1,
    traits     => [qw(        Hash        )],
    handles    => {
      'module_names' => 'keys',
      'has_module'   => 'exists',
      'module'       => 'get',
    },
  );

  has 'released' => ( isa => 'Str', is => 'rw', lazy_build => 1 );

  has 'perl_version' => ( isa => 'Str', is => 'rw', lazy_build => 1 );

  has 'coregroup' => ( isa => 'Str', is => 'rw', required => 1 );

  __PACKAGE__->meta->make_immutable;

  sub delta {
    my ( $self, $other ) = @_;
    my (%all) = map { $_, 1 }
      $self->module_names,
      $other->module_names;
    my %diffs;
    for my $module ( keys %all ) {
      if ( $self->has_module($module) and not $other->has_module($module) ) {
        $diffs{$module} = {
          kind              => 'ours',
          available_in      => $self->perl_version,
          not_available_in  => $other->perl_version,
          module            => $module,
          available_version => $self->module($module)->version,
        };
        next;
      }
      if ( not $self->has_module($module) and $other->has_module($module) ) {
        $diffs{$module} = {
          kind              => 'theirs',
          available_in      => $other->perl_version,
          not_available_in  => $self->perl_version,
          module            => $module,
          available_version => $other->module($module)->version,
        };
        next;
      }
      if ( ( $self->module($module)->version // 'undef' ) ne ( $other->module($module)->version // 'undef' ) ) {
        $diffs{$module} = {
          kind          => 'cross',
          module        => $module,
          our_version   => $self->module($module)->version,
          their_version => $other->module($module)->version,
          our_perl      => $self->perl_version,
          their_perl    => $other->perl_version,
        };
      }

    }
    return \%diffs;
  }

  # BUILDERS
  sub _build_perl_version {
    require version;
    my $self = shift;
    return version->parse( $self->perl )->numify;
  }

  sub _version_string {
    my $self = shift;
    return $self->perl . ' ( ' . $self->perl_version . ' )';
  }

  sub _build_released {
    require Module::CoreList;
    my $self = shift;
    if ( not exists $Module::CoreList::released{ $self->perl_version } ) {
      die "Version " . $self->_version_string . " is not in the \$released stash";
    }
    return $Module::CoreList::released{ $self->perl_version };
  }

  sub _build_modules {
    require Module::CoreList;
    my $self = shift;
    if ( not exists $Module::CoreList::version{ $self->perl_version } ) {
      die "Version " . $self->_version_string . " is not in the \$version stash";
    }

    my $stash = $Module::CoreList::version{ $self->perl_version };

    return {
      map {
        $_,
          CoreList::Module->new(
          perl      => $self->perl_version,
          coregroup => $self->coregroup,
          name      => $_,
          version   => $stash->{$_}
          )
        } keys $stash
    };
  }
}

BEGIN {

  package CoreGroup;
  use Moose;

  has _perls => ( isa => 'ArrayRef[Str]', is => 'rw', required => 1, init_arg => 'perls' );

  has perls => ( isa => 'HashRef[CoreList::Single]', is => 'rw', lazy_build => 1, init_arg => undef );
  has name => ( isa => 'Str', is => 'rw', required => 1 );

  __PACKAGE__->meta->make_immutable;

  sub get_perl {
    my ( $self, $perlv ) = @_;
    if ( not exists $self->perls->{$perlv} ) {
      die "No key $perlv";
    }
    return $self->perls->{$perlv};
  }

  # BUILDERS
  sub _build_perls {
    my $self = shift;
    return { map { $_, CoreList::Single->new( coregroup => $self->name, perl => $_ ) } @{ $self->_perls } };
  }

}
