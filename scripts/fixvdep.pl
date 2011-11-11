#!/usr/bin/env perl 

use strict;
use warnings;
# FILENAME: fixvdep.pl
# CREATED: 12/11/11 00:52:15 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Fix up version deps on a specific package in (a) given ebuild(s)


my ( $pkg, $oldversion , $newversion , @files ) = @ARGV;
@ARGV = ();


my @subs = ( 
  
  ( sprintf 's/%s-%s\s*$/%s-%s/' , $pkg, $oldversion,$pkg,$newversion ),
  ( sprintf 's/%s-%s\s*"/%s-%s"/' , $pkg, $oldversion,$pkg,$newversion ),

  ( sprintf 's/%s\s*%s\s*$/%s %s/', $pkg, $oldversion, $pkg, $newversion ),
  ( sprintf 's/%s\s*%s\s*#\s*%s\s*$/%s %s/', 
      $pkg, $oldversion, $newversion, $pkg, $newversion ),
  ( sprintf 's/%s-%s\s*\$\(comment\s*%s\)\s*$/%s-%s/', $pkg, $oldversion, $newversion, $pkg, $newversion ),





);

for my $sub ( @subs ) {
  print "$sub\n";
  system('sed','-i', '-r', '-e', $sub , @files );
}





