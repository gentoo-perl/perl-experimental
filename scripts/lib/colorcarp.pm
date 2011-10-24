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
  exports    => [ carper   => \&build_carper, ],
  collectors => [ defaults => \&defaults_collector ],
};

sub _lint_opts {
  my ( $hash, $set_unset ) = @_;

  if ( $set_unset and ( not exists $hash->{attributes} or not defined $hash->{attributes} ) ) {
    $hash->{attributes} = [];
  }

  #use Data::Dump;
  #Data::Dump::pp( \@_ );
  if ( exists $hash->{attributes} and defined $hash->{attributes} ) {
    not ref $hash->{attributes} eq 'ARRAY' and do { require Carp; Carp::confess('attributes is not an arrayref') }
  }
  if ( $set_unset and ( not exists $hash->{method} or not defined $hash->{method} ) ) {
    $hash->{method} = 'confess';
  }
  if ( exists $hash->{method} and defined $hash->{method} ) {

    if ( not grep { $_ eq $hash->{method} } qw( confess carp cluck croak ) ) {
      require Carp;
      Carp::confess('method is not one of confess,carp,cluck,croak');
    }
  }
}

sub defaults_collector {
  my ( $collection, $config ) = @_;
  _lint_opts( $collection, 1 );
  return 1;
}

sub build_carper {
  my ( $class, $name, $args, $col ) = @_;
  _lint_opts( $col->{defaults}, 1 );
  _lint_opts( $args,            0 );

  my $attributes = [ @{ $col->{defaults}->{attributes} || [] }, @{ $args->{attributes} || [] } ];
  my $method = $args->{method} || $col->{defaults}->{method} || 'ćonfess';

  require Carp;
  my $call = Carp->can($method);

  return sub {
    require Term::ANSIColor;
    my $value = shift;
    @_ = ( Term::ANSIColor::colored( $attributes, $value ) );
    goto $call;
  };

}

1;

