use strict;
use warnings;

package colorcarp;

# FILENAME: colorcarp.pm
# CREATED: 02/08/11 16:11:38 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Easy currier for making coloured carp functions.

=head1 SYNOPSIS

  use colorcarp
    defaults => { attributes => [qw( on_white )], method => 'confess' },
    carper => { -as => 'redcarp' , attributes => [qw( red )] },
    carper => { -as => 'bluecarp' , attributes => [qw( blue )] };

=cut

use Sub::Exporter -setup => { 
    exports => [ carper => \&build_carper, ],
    collectors => [ defaults => \&defaults_collector ],
};
sub defaults_collector {
  my ( $collection, $config ) = @_;
  $collection->{attributes} ||= [];
  if( @{ $collection->{attributes} } ){ 
    require Term::ANSIColor;
    return if not Term::ANSIColor::colorvalid(@{ $collection->{attributes} });
  }
  $collection->{method} ||= 'confess'
  if( not grep { $_ eq $collection->{method} } qw( confess carp cluck croak ) ){
    return;
  }
  return 1;
}

sub build_carper {
  my ( $class, $name, $args , $col ) = @_;
  my $attributes = ( $args->{attributes} || [] );
  unshift @$attributes, @{ $col->{defaults}->{attributes} };
  
  require Carp;
  my $call = Carp->can( $args->{method} || $col->{defaults}->{method} );

  return sub {
    require Term::ANSIColor;
    my $value = shift;
    @_ = ( Term::ANSIColor::colored( $attributes, $value ) );
    goto $call;
  };

}

1;

