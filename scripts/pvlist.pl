#!/usr/bin/env perl 
use 5.14.2;
use strict;
use warnings;

# FILENAME: pvlist.pl
# CREATED: 16/10/11 20:16:03 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Show version history for interesting perl dists

use MetaCPAN::API;
use CPAN::Changes;

my $mcpan = MetaCPAN::API->new();

my (@want_dists) = qw(
  App-cpanminus
  App-perlbrew
  Archive-Peek
  B-Hooks-OP-Check-EntersubForCV
  Business-Tax-VAT-Validation
  Catalyst-Action-REST
  Catalyst-Log-Log4perl
  Config-GitLike
  DBD-CSV
  Data-Handle
  DateTime-TimeZone-SystemV
  DateTime-TimeZone-Tzfile
  Devel-PatchPerl
  Dist-Zilla-Plugin-GithubMeta
  Dist-Zilla-Plugin-Test-Compile
  Dist-Zilla-Plugin-Test-Perl-Critic
  Dist-Zilla-Plugin-Twitter
  Dist-Zilla-PluginBundle-Author-KENTNL
  Filesys-Notify-Simple
  Filter-Simple
  FindBin-libs
  Git-Wrapper
  HTML-FormHandler
  HTML-Packer
  HTML-Template-Pro
  IO-Interactive
  JavaScript-Packer
  KiokuDB-Backend-DBI
  Lexical-Types
  Lingua-EN-Inflect-Phrase
  Module-Extract-Namespaces
  Module-Runtime
  MojoMojo
  Mojolicious
  MooseX-SetOnce
  MooseX-Types-Structured
  Net-Google-DataAPI
  Net-IPv4Addr
  ORLite-Migraate
  Object-ID
  POE-Component-SSLify
  Padre-Plugin-Vi
  Plack
  Plack-Middleware-ReverseProxy
  Pod-Elemental-Transformer-WikiDoc
  Scope-Upper
  Spark-Form
  Task-Spark-Form
  Test-LeakTrace
  Test-SharedFork
  Test-WWW-Mechanize-Catalyst
  Web-Scraper
  XML-RSS_LibXML
  XML-Smart
  XML-XSPF
  YAML-LibYAML
  autobox-Core
  autovivification
  perl5i
  CPANPLUS
  CPANPLUS-Dist-Build
  Devel-PPPort
  ExtUtils-MakeMaker
  Unicode-Collate
  Catalyst-Runtime
  Moose
  Class-MOP
  perl
  Dist-Zilla
  Package-Stash
  MetaCPAN-API
  Class-Load
  Dist-Zilla-PluginBundle-RJBS
);

my $oldest_date = '2011-09-01T00:00:00.000Z';
my $newest_date = '2012-01-01T00:00:00.000Z';

my (@styles) = (
  "\e[0m", "\e[1m", "\e[3m", "\e[4m", "\e[7m",
  ( ( "\e[1m\e[3m", "\e[1m\e[4m", "\e[1m\e[7m", ), ( "\e[3m\e[4m", "\e[3m\e[7m", ), "\e[4m\e[7m", ),
  ( ( "\e[1m\e[3m\e[4m", "\e[1m\e[3m\e7m" ), ( "\e[3m\e[4m\e[7m", ), ),
  ( "\e[1m\e[3m\e[4m\e[7m", ),
);

my (@fgs) = ( "\e[30m", "\e[31m", "\e[32m", "\e[33m", "\e[34m", "\e[35m", "\e[36m", "\e[37m" );
my (@bgs) = ( "\e[49m", "\e[41m", "\e[42m", "\e[43m", "\e[44m", "\e[45m", "\e[46m", "\e[47m", "\e[40m", );

my @bad = (
  [ undef, "\e[30m", "\e[40m" ],
  [ undef, "\e[30m", "\e[49m" ],
  [ undef, "\e[31m", "\e[41m" ],
  [ undef, "\e[32m", "\e[42m" ],
  [ undef, "\e[33m", "\e[43m" ],
  [ undef, "\e[34m", "\e[44m" ],
  [ undef, "\e[35m", "\e[45m" ],
  [ undef, "\e[36m", "\e[46m" ],
  [ undef, "\e[47m", "\e[47m" ],
);

sub is_bad {
  my ( $style, $fg, $bg ) = @_;
  for my $bc (@bad) {
    my ( $sm, $fgm, $bgm );
    $sm  = ( not defined $bc->[0] or $bc->[0] eq $style );
    $fgm = ( not defined $bc->[1] or $bc->[1] eq $fg );
    $bgm = ( not defined $bc->[2] or $bc->[2] eq $bg );
    return 1 if ( $sm and $fgm and $bgm );
  }
  return;
}

my (@colours);

for my $bg (@bgs) {
  for my $style (@styles) {

    for my $fg (@fgs) {
      next if is_bad( $style, $fg, $bg );
      push @colours, $style . $fg . $bg;

    }
  }
}

my (@author_color_map)  = @colours;
my (@dist_color_map)  = @colours;

sub next_c {
  my $i = $_[0];
   my $colour = shift @{$i};
  push @{$i}, $colour;
  return $colour;

}
sub next_colour {
  return next_c \@colours;
}

my %dist_colours;
my %author_colours;

sub author_colour {
  return $author_colours{ $_[0] } if exists $author_colours{ $_[0] };
  return ( $author_colours{ $_[0] } = next_c \@author_color_map );
}

sub dist_colour {
  return $dist_colours{ $_[0] } if exists $dist_colours{ $_[0] };
  return ( $dist_colours{ $_[0] } = next_c \@dist_color_map );
}

sub ac {
  return author_colour( $_[0] ) . $_[0] . "\e[0m";
}

sub dc {
  return dist_colour( $_[0] ) . $_[1] . "\e[0m";
}

my $results = $mcpan->post(
  'release',
  {
    query => {
      terms => {
        distribution  => [ @want_dists, ],
        minimum_match => 1,
      }
    },
    filter => {
      range => {
        date => {
          from => $oldest_date,
          to   => $newest_date,
        },
      },
    },
    sort   => [ 
      #   { 'author' => 'asc', },
      { 'date' => 'desc' , }
    ],
    fields => [qw( author name date distribution )],
    size   => 1024,
  }
);
use Try::Tiny;
use Data::Dump qw( pp );
for my $result ( @{ $results->{hits}->{hits} } ) {

  my %f = %{ $result->{fields} };
  my ( $date, $distribution, $name, $author ) = @f{qw( date distribution name author)};

  my $file;
  try { 
    $file = $mcpan->source(
    author => $author,
    release => $name,
    path => 'Changes',
    );
  };
  my ( $changes, @releases);
  if ( $file ) {
   $changes = CPAN::Changes->load_string( $file );
  }
  if ( $changes ){
    @releases = $changes->releases();
  }
  
  say sprintf "%s - %s/%s\e[0m", $date, ac($author), dc($distribution,$name);
  if ( @releases ) {
    say $releases[-1]->serialize;
  }
}
