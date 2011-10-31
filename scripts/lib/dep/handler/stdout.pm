use strict;
use warnings;

package dep::handler::stdout;

# FILENAME: stdout.pm
# CREATED: 31/10/11 13:30:29 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Dispatch dependency information to STDOUT.

use Moose;
has 'indent' => ( is => 'rw' );
has 'tail'   => ( is => 'rw' );
__PACKAGE__->meta->make_immutable;

sub begin_dep {
  my ( $self, $release, $module, $declaration ) = @_;
  $self->indent(" \e[1;92m*");
  $self->tail(" \e[1;92m-\n\n");
  my $wantstring = $self->_want_string( $release, $module, $declaration );
  return *STDOUT->printf( "\e[1;93m%s\e[0m\n", $wantstring );
}

sub evt_not_any {
  my ( $self, $module, $declaration ) = @_;
  return *STDOUT->printf( "%sWARNING: NO PROVIDER FOUND FOR \"%s\"%s\n", "\e[1;91m", $module, "\e[0m" );
}

sub evt_multi {
  my ( $self, $module, $declaration ) = @_;
  $self->indent(" \e[1;91m*");
  $self->tail(" \e[1;91m-\n\n");

  return *STDOUT->printf( "%sWARNING: MULTIPLE PROVIDERS FOUND FOR \"%s\"%s\n", "\e[1;91m", $module, "\e[0m" );
}

sub set_latest {
  my ( $self, $dep, $pkg ) = @_;
  return *STDOUT->printf( "%s\e[1;95m latest: %s => %s ( %s )\n", $self->indent, @{$dep}, $pkg );
}

sub _want_string {
  my ( $self, $release, $module, $declaration ) = @_;
  return $release . " -> " . $declaration->[2] . " " . $declaration->[3] . " " . $self->_depstring( $module, $declaration );
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
  *STDOUT->printf("%s %s%s -> %s%s\n", $self->indent, "\e[1;94m", $module, "\e[0m\e[94m", $pkg );
}
sub provider_group {
  my ( $self, $data ) = @_;

  my $want_string = $self->_want_string( $data->{release}, $data->{module}, $data->{declaration} );
  my $depstring = $self->_depstring( $data->{module}, $data->{declaration} );

  my $prefix = $depstring . ' in ' . $data->{provider};

  my $lines = $self->_xwrap( join q[, ], @{ $data->{versions} } );
  my (@slines) = split /$/m, $lines;
  $_ =~ s/[\r\n]*//m for @slines;

  *STDOUT->printf( " %s%s -> %s%s (%s)\n", "\e[1;92m", $depstring, "\e[0m\e[92m", $data->{provider}, $data->{gentoo_pkg} );
  *STDOUT->printf( "%s newest: %s\e[0m\n", $self->indent, $data->{newest} );
  *STDOUT->printf( "%s oldest: %s\e[0m\n", $self->indent, $data->{oldest} );

  my $v = $data->{closest};
  if ( not $data->{has_closest} ) { $v = 'undef' }

  *STDOUT->printf( "%s closest: %s\e[0m\n", $self->indent, $v );

  for (@slines) {
    *STDOUT->printf( "%s %s%s -> %s%s\n", $self->indent, "\e[1;94m", $data->{provider}, "\e[0m\e[94m", $_ );
  }

}

sub done {
  my ( $self, $module, $declaration ) = @_;
  return *STDOUT->print( $self->tail );
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;

