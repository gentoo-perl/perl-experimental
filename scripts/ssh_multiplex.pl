#!/usr/bin/env perl 
eval 'echo "Called with something not perl"' && exit 1    # Non-Perl protection.
  if 0;

use strict;
use warnings;
use 5.12.1;

# FILENAME: ssh_multiplex.pl
# CREATED: 02/08/11 12:18:23 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Spawn Background SSH Masters for Gentoo Git Sources

use File::Which qw( which );
use Data::Dump qw( dump );

my $ssh_cmd  = which(qw( ssh ));
my %flag_map = (
  background         => ['-f'],
  no_execute_command => ['-N'],
  no_stdin           => ['-n'],
  control_master     => [ '-o', 'ControlMaster=auto' ],
);

my @pids;

spawn_cmd(
  {
    pids    => \@pids,
    params  => [qw( background no_execute_command no_stdin control_master )],
    connect => 'git@github.com',
    cleanup => sub {
      say "\e[31mConnected to git\@github.com\e[0m";
    },
  }
);

spawn_cmd(
  {
    pids    => \@pids,
    params  => [qw( background no_execute_command no_stdin control_master )],
    connect => 'git@git.gentoo.org',
    cleanup => sub {
      say "\e[32mConnected to git\@git.gentoo.org\e[0m";
    },
  }
);

for (@pids) {
  waitpid $_, 0;
}

say "Done.";

exit;

sub map_option {
  my ($option) = @_;
  if ( not exists $flag_map{$option} ) {
    require Carp;
    Carp::croak("Map for $option undefined");
  }
  return @{ $flag_map{$option} };
}

sub map_literal_array {
  my ($literal) = @_;
  return @{$literal};
}

sub map_param {
  my ($param) = @_;
  return map_option($param) if not ref $param;
  return map_literal_array($param) if ref $param eq 'ARRAY';
  require Carp;
  Carp::croak("Unhandled parameter $param");
}

sub spawn_child {
  my (@cmd) = @_;
  local $!;
  local $?;
  local $@;
  my $cleanup = pop @cmd;
  my $pid;
  if ( not defined( $pid = fork() ) ) {
    my (%error) = ( '$!', $!, '$?', $?, '$@', $@ );
    require Carp;
    Carp::croak( 'Forking Failed :( ' . dump \%error );
  }
  if ($pid) {
    return $pid;
  }
  local $!;
  local $?;
  local $@;
  system(@cmd) == 0 or do {
    my (%error) = ( '$!', $!, '$?', $?, '$@', $@ );
    require Carp;
    Carp::croak( 'Running command Failed :( ' . dump \%error );
  };
  $cleanup->();
  exit;
}

sub spawn_cmd {
  my ($args) = @_;
  my @outargs = map { map_param($_) } @{ $args->{'params'} };
  my (@cmd) = ( $ssh_cmd, @outargs, $args->{'connect'} );
  say "Spawning " . dump( \@cmd );
  $args->{cleanup} //= sub {
    say "\e[31mConnected to " . $args->{'connect'} . "\e[0m";
  };
  push @{ $args->{pids} }, grep { defined } spawn_child( @cmd, $args->{cleanup} );
}

