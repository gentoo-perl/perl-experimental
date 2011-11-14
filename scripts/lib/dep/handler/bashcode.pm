use strict;
use warnings;

package dep::handler::bashcode;

# FILENAME: bashcode.pm
# CREATED: 31/10/11 14:22:06 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Bash code dep handler

use Moose;
use MooseX::LazyRequire;

has 'tdeps' => ( is => 'rw', isa => 'ArrayRef', lazy => 1, predicate => 'has_tdeps', default => sub { [] } );
has 'rdeps' => ( is => 'rw', isa => 'ArrayRef', lazy => 1, predicate => 'has_rdeps', default => sub { [] } );
has 'cdeps' => ( is => 'rw', isa => 'ArrayRef', lazy => 1, predicate => 'has_cdeps', default => sub { [] } );
has 'bdeps' => ( is => 'rw', isa => 'ArrayRef', lazy => 1, predicate => 'has_bdeps', default => sub { [] } );

has 'debug' => ( is => 'rw', isa => 'Bool', default => sub { return } );
has 'debug_handler' => ( is => 'rw', isa => 'Object', lazy_required => 1 );

has dep_current => ( is => 'rw', clearer => 'clear_current' );

sub do_debug {
  my ( $self, $method, @args ) = @_;
  return unless $self->debug;
  my $handler = $self->debug_handler;
  my $fun     = $handler->can($method);
  if ( not $fun ) {
    warn "Can't dispatch debug method $fun\n";
    return;
  }
  return $fun->( $handler, @args );
}

sub begin_dep {
  my ( $self, $release, $module, $declaration ) = @_;
  $self->do_debug( 'begin_dep', $release, $module, $declaration );
  $self->dep_current(
    {
      for       => $module,
      wanted    => $declaration->[0],
      for_phase => $declaration->[2],
      priority  => $declaration->[3],
    }
  );
}

sub evt_not_any {
  my ( $self, $module, $declaration ) = @_;
  $self->do_debug( 'evt_not_any', $module, $declaration );

  my $mesg = "No provider: $module ";
  $mesg .= $declaration->[0] if defined $declaration->[0];
  warn( $mesg . "\n" );
}

sub evt_multi {
  my ( $self, $module, $declaration ) = @_;
  $self->do_debug( 'evt_multi', $module, $declaration );

  my $mesg = "Mutli provider: $module ";
  $mesg .= $declaration->[0] if defined $declaration->[0];
  warn( $mesg . "\n" );
}

sub set_latest {
  my ( $self, $dep, $pkg ) = @_;
  $self->do_debug( 'set_latest', $dep, $pkg );
  $self->dep_current->{choose} = $pkg;
}

sub perl_dep {
  my ( $self, $module, $declaration, $pkg ) = @_;
  $self->do_debug( 'perl_dep', $module, $declaration, $pkg );

  $self->dep_current->{choose} = $pkg;
}

sub provider_group {
  my ( $self, $data ) = @_;
  $self->do_debug( 'provider_group', $data );

}

sub done {
  my ( $self, $module, $declaration ) = @_;
  $self->do_debug( 'done', $module, $declaration );

  my $dc = $self->dep_current;

  #  *STDOUT->say( $dc->{for_phase} . ' ' . $dc->{priority} . ' ' .  $dc->{for} . ' ' . $dc->{wanted} . ' ' . $dc->{choose} );
  $self->clear_current;
  return if ( $dc->{for_phase} eq 'develop' or $dc->{priority} ne 'requires' );

  my $rec = { dep => $dc->{for}, install => $dc->{choose} };
  if ( $dc->{wanted} ) {
    require Gentoo::PerlMod::Version;
    $rec->{dep} .=
      ' ' . $dc->{wanted} . ' ( ' . Gentoo::PerlMod::Version::gentooize_version( $dc->{wanted}, { lax => 1 } ) . ' )';
  }

  push @{ $self->bdeps }, $rec if $dc->{for_phase} eq 'build';
  push @{ $self->cdeps }, $rec if $dc->{for_phase} eq 'configure';
  push @{ $self->tdeps }, $rec if $dc->{for_phase} eq 'test';
  push @{ $self->rdeps }, $rec if $dc->{for_phase} eq 'runtime';
  return;
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;

