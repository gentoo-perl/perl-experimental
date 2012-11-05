#!/usr/bin/env perl
eval 'echo "Called with something not perl"' && exit 1    # Non-Perl protection.
  if 0;

use 5.14.2;
use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/../lib";

use env::gentoo::perl_experimental;



# FILENAME: directory_changes_to_branch.pl
# CREATED: 06/11/12 08:45:40 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: convert a history of changes to a given path to a dedicated branch

my ( $branchname, $path, $branch_base , $branch_tip ) = @ARGV;
my ( $env ) = env::gentoo::perl_experimental->new();

use Git::Wrapper;
use Git::Repository;
use File::Temp;

my $git = Git::Repository->new( work_tree => $env->root );

say "Creating branch $branchname based on changes in $path since $branch_base";

my $filter = $env->root->subdir('scripts')->subdir('git')->subdir('branch-filter')->subdir('tree-filter')->file('directory_change_restrict.pl');

$ENV{DIRECTORY_CHANGE_RESTRICT_path} = $path;
$ENV{DIRECTORY_CHANGE_RESTRICT_commit} = $branch_base;

use File::pushd;

my $cwd = pushd( $env->root->stringify );

$git->run('checkout','-b',$branchname , $branch_tip );
$git->run( 'filter-branch', '-f', qw( --prune-empty  --tree-filter ),"$^X $filter", $branch_base . '..' . $branchname );


