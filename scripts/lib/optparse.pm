use strict;
use warnings;

package optparse;

# FILENAME: optparse.pm
# CREATED: 29/02/12 07:50:47 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Lightweight option parser;

use Moose;

has 'help' => ( isa => 'CodeRef',  is => 'rw', required => 1 );
has 'argv' => ( isa => 'ArrayRef', is => 'rw', required => 1 );

has 'long_opts' => (
  isa          => 'HashRef',
  is           => 'rw',
  'lazy_build' => 1,
  traits       => [qw( Hash )],
  handles      => {
    has_long_opt => 'exists',
    long_opt     => 'get',
  },
);
has 'opts' => (
  isa        => 'HashRef',
  is         => 'rw',
  lazy_build => 1,
  traits     => [qw( Hash )],
  handles    => {
    has_opt => 'exists',
    opt     => 'get',
  },
);
has 'extra_opts' => ( isa => 'ArrayRef', is => 'rw', 'lazy_build' => 1 );

sub _build_extra_opts {
  my $self = shift;
  return [ grep { $_ !~ /^--(.+)/ and $_ !~ /^-(\w+)/ } @{ $self->argv } ];
}

sub _build_opts {
  my $self = shift;
  my $hash = {};
  for my $arg ( @{ $self->argv } ) {
    next if $arg =~ /^--(.+)/;
    next unless $arg =~ /^-(\w+)/;
    $hash->{$1}++;
  }
  return $hash;
}

sub _build_long_opts {
  my $self = shift;
  my $hash = {};
  for my $arg ( @{ $self->argv } ) {
    next unless $arg =~ /^--(.+)/;
    my ($token) = "$1";
    if ( $token =~ /^([^=]+)=(.*$)/ ) {
      $hash->{$1} = $2;
    }
    else {
      $hash->{$token}++;
    }
  }
  return $hash;
}

sub BUILD {
  my ($self) = shift;
  if ( defined $self->opts->{h} or defined $self->long_opts->{help} ) {
    $self->help->();
    exit 0;
  }
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;

