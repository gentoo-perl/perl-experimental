use strict;
use warnings;
package colorcarp;
# FILENAME: colorcarp.pm
# CREATED: 02/08/11 16:11:38 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Easy currier for making coloured carp functions.


sub import {
  my $inject = [ caller ]->[0];
  my $params = $_[1] ;
  for my $method ( keys %{$params} ){
    my ( $foreground, $background, $realcall ) = @{ $params->{$method} };
    eval "{ package $inject ; sub $method {
      my \$value = shift;
      color: {
        last color if \$ENV{NO_COLOR};
        \$value =~ s/^(.*)\$/\e[${foreground};${background}m \$1 \e[0m\n/mg;
      }
      \@_ = ( \$value );
      require Carp;
      goto \&Carp::${realcall}
    }}"
  }
}


1;


