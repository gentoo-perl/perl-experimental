use strict;
use warnings;
package dep::handler::bashcode;
# FILENAME: bashcode.pm
# CREATED: 31/10/11 14:22:06 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Bash code dep handler

use Moose;

has 'tdeps' => (is => 'rw',isa => 'ArrayRef', lazy => 1, predicate => 'has_tdeps' , default => sub { [] } );
has 'rdeps' => (is => 'rw', isa => 'ArrayRef', lazy => 1, predicate => 'has_rdeps', default => sub { [] } );
has 'cdeps' => (is => 'rw', isa => 'ArrayRef', lazy => 1, predicate => 'has_cdeps', default => sub { [] } );
has 'bdeps' => (is => 'rw', isa => 'ArrayRef', lazy => 1, predicate => 'has_bdeps', default => sub { [] } );

has dep_current => ( is => 'rw' , clearer => 'clear_current' );

sub begin_dep {
  my ( $self, $release, $module, $declaration ) = @_;
  $self->dep_current(
    {
      for => $module, 
      wanted => $declaration->[0],
      for_phase => $declaration->[2],
      priority => $declaration->[3],
    }
  );
}

sub evt_not_any {
  my ( $self, $module, $declaration ) = @_;
  my $mesg = "No provider: $module ";
  $mesg .= $declaration->[0] if defined $declaration->[0];
  warn($mesg . "\n");
}
sub evt_multi {
  my ( $self, $module, $declaration ) = @_;
  my $mesg = "Mutli provider: $module ";
  $mesg .= $declaration->[0] if defined $declaration->[0];
  warn($mesg . "\n");
}

sub set_latest {
  my ( $self, $dep, $pkg ) = @_;
  $self->dep_current->{choose} = $pkg;
}

sub perl_dep {
  my ( $self, $module, $declaration , $pkg ) = @_ ; 
  $self->dep_current->{choose} = $pkg;
}

sub provider_group { 
  my ( $self, $data ) = @_;
}

sub done { 
  my ( $self, $module, $declaration ) = @_;
  my $dc = $self->dep_current;
  #  *STDOUT->say( $dc->{for_phase} . ' ' . $dc->{priority} . ' ' .  $dc->{for} . ' ' . $dc->{wanted} . ' ' . $dc->{choose} );
  $self->clear_current;
  return if ( $dc->{for_phase} eq 'develop' or $dc->{priority} ne 'requires' );
  
  my $rec = { dep => $dc->{for} , install => $dc->{choose} };
  if( $dc->{wanted} ){ 
    require Gentoo::PerlMod::Version;
    $rec->{dep} .= ' ' . $dc->{wanted} . ' ( ' . Gentoo::PerlMod::Version::gentooize_version( $dc->{wanted} , { lax => 1 }) . ' )';
  }

  push @{ $self->bdeps }, $rec if  $dc->{for_phase} eq 'build';
  push @{ $self->cdeps }, $rec if  $dc->{for_phase} eq 'configure';
  push @{ $self->tdeps }, $rec if  $dc->{for_phase} eq 'test';
  push @{ $self->rdeps }, $rec if  $dc->{for_phase} eq 'runtime';
  return;
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;


