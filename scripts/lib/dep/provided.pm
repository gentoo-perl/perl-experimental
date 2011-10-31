use strict;
use warnings;

package dep::provided;

# FILENAME: provided.pm
# CREATED: 31/10/11 13:42:24 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: repesents a provided package

use Moose;
require dep::module;

has 'distribution' => ( isa => 'Defined', is => 'rw', required => 1 );
has 'version'  => ( isa => 'Maybe[Str]', is  => 'rw', default => sub { undef } );
has 'maturity' => ( is  => 'rw',       required   => 1 );
has 'status'   => ( is  => 'rw',       required   => 1 );
has 'gv'       => ( is  => 'rw',       lazy_build => 1 );
has '_modules' => ( isa => 'ArrayRef', required   => 1, init_arg => '_source.module', is => 'rw', );
has 'modules' => ( isa => 'ArrayRef[dep::module]', lazy_build => 1, is => 'rw' );

__PACKAGE__->meta->make_immutable;

sub _build_modules {
  my $self = shift;
  return [ map { dep::module->new( %{$_}, parent => $self ) } @{ $self->_modules } ];
}

sub _build_gv {
  require Gentoo::PerlMod::Version;
  use Try::Tiny;
  my ($self) = @_;
  my $v;
  try {
    $v = Gentoo::PerlMod::Version::gentooize_version( $self->version, { lax => 1 } );
  }
  catch {
    $v = undef;
  };
  return $v;
}

sub can_gv {
  return defined $_[0]->gv;
}

sub is_dev {
  return $_[0]->maturity eq 'development';
}

sub is_backpan {
  return $_[0]->status eq 'backpan';
}

no Moose;
1;

