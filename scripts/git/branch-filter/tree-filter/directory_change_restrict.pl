#!/usr/bin/env perl

use v5.12;
use strict;
use warnings;

# FILENAME: directory_change_restrict.pl
# CREATED: 06/11/12 08:04:15 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Restrict changes to happen in a single dir
#
#

sub USAGE {
  return <<"EOT";

  $0

  $0 PRESERVEPATH COMMIT

  GIVEN: a path in git you wish to keep the history of, and to ignore changes outside of

         a commit to ignore changes beyond


  git
    filter-branch
      --prune-empty
      --tree-filter 'perl path/to/$0 PRESERVEPATH COMMIT'
      range_start..range_end

ABOUT

  If you have a series of commits crossing multiple directories, but you're only
  interested in *changes* that occurred for certain specific directories for certain specific commit ranges, ie:

  ~9000 previous commits

  COMMIT9000:
    +- dir/a
    +- dir/b
    +- dir/c

  COMMIT9001:
    +- dir/b
    +- dir/c

  COMMIT9002:
    +- dir/a

  COMMIT9003:
    +- dir/a
    +- dir/c


  You don't want to *delete* paths b & c just to isolate changes to a after commit 9000

  So you create a branch,

    git checkout -b selective-a master

  And filter chanegs only to a

    git filter-branch
      --prune-empty
      --tree-filter 'perl path/to/$0 dir/a COMMIT8999'
      COMMIT9000..COMMIT9003

  The resulting branch 'selective-a' should look like:

  COMMIT9000:
    +- dir/a

  COMMIT9002:
    +- dir/a

  COMMIT9003:
    +- dir/a


  But changes to dir/b and dir/c prior to COMMIT9000 are preserved in this branches history.

  This is a useful tool to exercise to split commits pertaining to multiple ebuilds into per-package histories
  instead of shared history commits.


EOT
}

use Git::Wrapper;
use Path::Class qw( dir file );
use File::Temp qw();

my ( $path, $commit ) = @ARGV;

if ( $ENV{DIRECTORY_CHANGE_RESTRICT_path} ) {
  $path   = $ENV{DIRECTORY_CHANGE_RESTRICT_path};
  $commit = @ARGV;
}
if ( $ENV{DIRECTORY_CHANGE_RESTRICT_commit} ) {
  $commit = $ENV{DIRECTORY_CHANGE_RESTRICT_commit};
}

if ( not $path or not $commit ) {
  die USAGE();
}

my $git = Git::Wrapper->new('.');

if ( not -e $path ) {
  revert_tree($commit);
  exit 0;
}

my $preserve = ( -f $path ? file($path) : dir($path) );

my $tempfile = File::Temp->new( 'git-filter-branch.XXXXX', SUFFIX => '.tar', TMPDIR => 1, UNLINK => 1 );

tar( '-cf', $tempfile->filename, $preserve );
revert_tree($commit);
if ( -f $preserve ) {
  $preserve->remove();
}
else {
  $preserve->rmtree();
}
tar( '-xf', $tempfile->filename );

sub revert_tree {
  my ($commit) = @_;
  $git->reset( qw( --hard ), $commit, '--' );
  $git->reset(qw( --soft  ORIG_HEAD -- ));
}

sub tar {
  my (@args) = @_;
  open my $fh, '-|', 'tar', @args or do {
    die "Error calling tar: $? $! $@";
  };
  while ( my $line = <$fh> ) {
    chomp $line;
    print "\e[39m$line\e[0m\n";
  }
  $fh->close or do {
    warn "Error closing tar: $? $! $@";
  };
}
