use strict;
use warnings;

package coloriterator;

# FILENAME: coloriterator.pm
# CREATED: 25/10/11 00:08:36 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Iterate/Assign colors to keys

=head1 SYNOPSIS

  use coloriterator 
    coloriser => { -as => author_color },
    coloriser => { -as => dist_color };

  # Foo will always be the same color.

  for (qw( foo bar foo baz )){
    print dist_color($_) . $_ ;
  }
=cut

use Sub::Exporter -setup => { exports => [ coloriser => \&build_coloriser ], };

use Term::ANSIColor 3.020 qw( :constants );

sub build_coloriser {
  my ( $class, $name, $args ) = @_;
  my $colors = {};
  my $cmap   = gen_color_map();
  return sub {
    my $key = $_[0];
    return $colors->{$key} if exists $colors->{$key};
    my $color = shift @{$cmap};
    push @{$cmap}, $color;
    $colors->{$key} = $color;
    return $color;
  };
}

sub gen_color_map {
  my (@styles) = (
    RESET,
    BOLD,
    ITALIC,
    UNDERLINE,
    REVERSE,
    ( ( BOLD . ITALIC, BOLD . UNDERLINE, BOLD . REVERSE ), ( ITALIC . UNDERLINE, ITALIC . REVERSE, ), ( UNDERLINE . REVERSE ), ),
    ( BOLD . ITALIC . UNDERLINE, BOLD . ITALIC . REVERSE, ITALIC . UNDERLINE . REVERSE, ),
    ( BOLD . ITALIC . UNDERLINE . REVERSE ),
  );
  my (@fgs) = (
    BLACK,        RED,        GREEN,        YELLOW,        BLUE,        MAGENTA,        CYAN,        WHITE,
    BRIGHT_BLACK, BRIGHT_RED, BRIGHT_GREEN, BRIGHT_YELLOW, BRIGHT_BLUE, BRIGHT_MAGENTA, BRIGHT_CYAN, BRIGHT_WHITE
  );

  my (@bgs) = (
    "",               ON_WHITE,       ON_RED,            ON_GREEN,        ON_YELLOW,     ON_BLUE,
    ON_MAGENTA,       ON_CYAN,        ON_BLACK,          ON_BRIGHT_WHITE, ON_BRIGHT_RED, ON_BRIGHT_GREEN,
    ON_BRIGHT_YELLOW, ON_BRIGHT_BLUE, ON_BRIGHT_MAGENTA, ON_BRIGHT_CYAN,  ON_BRIGHT_BLACK
  );

  my @bad = (
    [ undef, BLACK,   ON_BLACK ],
    [ undef, BLACK,   "" ],
    [ undef, RED,     ON_RED ],
    [ undef, GREEN,   ON_GREEN ],
    [ undef, YELLOW,  ON_YELLOW ],
    [ undef, BLUE,    ON_BLUE ],
    [ undef, MAGENTA, ON_MAGENTA ],
    [ undef, CYAN,    ON_CYAN ],
    [ undef, WHITE,   ON_WHITE ],
  );

  my (@colors);
  my $is_bad = sub {
    my ( $style, $fg, $bg ) = @_;
    for my $bc (@bad) {
      my ( $sm, $fgm, $bgm );
      $sm  = ( not defined $bc->[0] or $bc->[0] eq $style );
      $fgm = ( not defined $bc->[1] or $bc->[1] eq $fg );
      $bgm = ( not defined $bc->[2] or $bc->[2] eq $bg );
      return 1 if ( $sm and $fgm and $bgm );
    }
    return;
  };
  for my $bg (@bgs) {
    for my $style (@styles) {

      for my $fg (@fgs) {
        next if $is_bad->( $style, $fg, $bg );
        push @colors, $style . $fg . $bg;

      }
    }
  }
  return \@colors;
}

1;

