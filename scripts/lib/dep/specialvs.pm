use strict;
use warnings;

package dep::specialvs;

# FILENAME: specialvs.pm
# CREATED: 31/10/11 13:38:14 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Collect special version information about a dependency

use Moose;

has newest  => ( isa => 'HashRef', default => sub { {} }, is => 'rw' );
has newestx => ( isa => 'HashRef', default => sub { {} }, is => 'rw' );

has oldest  => ( isa => 'HashRef', default => sub { {} }, is => 'rw' );
has oldestx => ( isa => 'HashRef', default => sub { {} }, is => 'rw' );

has closest  => ( isa => 'HashRef', default => sub { {} }, is => 'rw' );
has closestx => ( isa => 'HashRef', default => sub { {} }, is => 'rw' );

has latest  => ( is => 'rw', predicate => 'has_latest' );
has latestx => ( is => 'rw', predicate => 'has_latestx' );

sub set_latest_mod {
  my ( $self, $provider, $mod ) = @_;
  return if $self->has_latest;
  $self->latest( [ $provider, $mod->debug_string ] );
  $self->latestx( [ $provider, $mod ] );
}

sub set_newest_mod {
  my ( $self, $key, $mod ) = @_;
  return if exists $self->newest->{$key};
  $self->newest->{$key}  = $mod->debug_string;
  $self->newestx->{$key} = $mod;
}

sub set_oldest_mod {
  my ( $self, $key, $mod ) = @_;

  $self->oldest->{$key}  = $mod->debug_string;
  $self->oldestx->{$key} = $mod;
}

sub set_closest_mod {
  my ( $self, $key, $mod ) = @_;
  if ( not defined $self->closestx->{$key} ) {
    $self->closestx->{$key} = $mod;
    $self->closest->{$key}  = $mod->debug_string;
    return;
  }
  if ( $self->closestx->{$key}->version >= $mod->version ) {
    $self->closestx->{$key} = $mod;
    $self->closest->{$key}  = $mod->debug_string;
  }
  return;
}

__PACKAGE__->meta->make_immutable;

no Moose;
1;

