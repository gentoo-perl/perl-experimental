#!/usr/bin/env perl 

use 5.12.2;
use strict;
use warnings;

# FILENAME: dual-life.pl
# CREATED: 01/11/11 05:49:45 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: find/report dual-life modules.
use Module::CoreList;
use Data::Dump qw( pp );
use FindBin;
use version;

use lib "$FindBin::Bin/lib";
use corelist::group;

#my $pv = shift(@ARGV);

my $perls = {
  masked_future => corelist::group->new( name => 'masked_future', perls => [qw( 5.14.0 5.14.1 5.14.2 )] ),
  masked_past   => corelist::group->new( name => 'masked_past',   perls => [qw( 5.8.8 5.10.1 )] ),
  testing       => corelist::group->new( name => 'testing',       perls => [qw( 5.12.4 )] ),
  stable        => corelist::group->new( name => 'stable',        perls => [qw( 5.12.3 )] ),
};

my $to =  $perls->{masked_future}->get_perl(qw( 5.14.1 ));
my $from   =  $perls->{testing}->get_perl(qw( 5.12.4 ));

my $delta = $from->delta( $to );

for my $module ( sort keys %{ $delta }){
    my $data = $delta->{$module};
    if( $data->{kind} eq 'cross' ){
        my ( $ourv , $theirv ) = @{$data}{'our_version','their_version'};
        say sprintf "\e[31m[ CHANGE  ]\e[0m %-40s\t%s  => %s", $module, numpad($ourv) , numpad($theirv);
    } elsif( $data->{kind} eq 'theirs' ) {
        my ( $av , $av_in, $nav_in ) = @{$data}{'available_version','available_in','not_available_in'};

        say sprintf "\e[32m[   NEW   ] %-40s\t%8s\e[0m", $module, numpad($av);
    } else {
        my ( $av , $av_in, $nav_in ) = @{$data}{'available_version','available_in','not_available_in'};


        say sprintf "\e[33m[ REMOVED ] %-40s\t%8s\e[0m", $module, numpad($av);
    }
}

sub numpad {
    my $num = shift;
    my $value;
    if ( defined $num ){ 
        return sprintf "%8s", $num ;
    } else {
        return "\e[31m" . ( sprintf "%8s", 'undef' ) . "\e[0m";
    }
}
#for my $group ( $perls->{masked_future} ) {
#  for my $perl ( values $group->perls ) {
#    for my $module ( values $perl->modules ) {
#      say $module->to_s;
#    }
#  }
#}

#pp $perls;

exit 0;



