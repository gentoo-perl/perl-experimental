use strict;
use warnings;

package dep::handler::stdout::simple;

# FILENAME: simple.pm
# CREATED: 31/10/11 13:30:29 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Dispatch terse dependency information to STDOUT.

use Moose;
#extends 'dep::handler::stdout::terse';
has 'indent' => ( is => 'rw' );
has 'tail'   => ( is => 'rw' );
__PACKAGE__->meta->make_immutable;

sub begin_dep {
  my ( $self, $release, $module, $declaration ) = @_;
  return *STDOUT->print("\n\n" . $self->_want_string( $release, $module, $declaration ) . "\n");
}

sub evt_not_any {
  my ( $self, $module, $declaration ) = @_;
  return *STDOUT->print("  No provider found for $module : @$declaration\n");
}

sub evt_multi {
  my ( $self, $module, $declaration ) = @_;
  return *STDOUT->print("  Multiple Providers found for " . $self->_want_string( "", $module, $declaration) . "\n");
}

sub set_latest {
  my ( $self, $dep, $pkg ) = @_;
  return *STDOUT->print("  Latest: @{$dep}  => ${pkg}\n");
}

sub _want_string {
  my ( $self, $release, $module, $declaration ) = @_;
  return $release . " -> " . $declaration->[2] . " " . $declaration->[3] . " -> " . $self->_depstring( $module, $declaration );
}

sub _depstring {
  my ( $self, $module, $declaration ) = @_;

  my $depstring = $module;

  if ( $declaration->[1] ne '0.0.0' ) {
    $depstring .= " " . $declaration->[0] . " ( " . $declaration->[1] . " ) ";
  }
  return $depstring;
}

sub _xwrap {
  my $self = shift;
  require Text::Wrap;
  local $Text::Wrap::break    = qr/,/;
  local $Text::Wrap::overflow = 'huge';
  local $Text::Wrap::columns  = 128;
  $Text::Wrap::overflow = 'huge';
  my $pre = " ";
  my $lines = Text::Wrap::wrap( $pre, $pre, @_ );
  return $lines;
}
sub perl_dep {
  my ( $self, $module, $declaration , $pkg ) = @_ ; 
  *STDOUT->print(" -> $module : @{$declaration} via $pkg\n");
}
sub provider_group {
  my ( $self, $data ) = @_;

  my $want_string = $self->_want_string( $data->{release}, $data->{module}, $data->{declaration} );
  my $depstring = $self->_depstring( $data->{module}, $data->{declaration} );

  *STDOUT->printf( "   %s -> %s (%s)\n", $depstring, $data->{provider}, $data->{gentoo_pkg} );
  #*STDOUT->printf( "%s newest: %s\e[0m\n", $self->indent, $data->{newest} );
  #*STDOUT->printf( "%s oldest: %s\e[0m\n", $self->indent, $data->{oldest} );

  my $v = $data->{closest};
  if ( not $data->{has_closest} ) { $v = 'undef' }

  *STDOUT->print( " closest: $v\n" );


}

sub done {
  my ( $self, $module, $declaration ) = @_;
  return *STDOUT->print( $self->tail );
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;

