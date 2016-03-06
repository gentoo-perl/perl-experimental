# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BOOK
MODULE_VERSION=1.001
inherit perl-module

DESCRIPTION='Git subcommands as Git::Repository methods'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# File::Find
	# echo dev-lang/perl
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# Git::Repository 1.309 ( 1.309.0 )
	echo \>=dev-perl/Git-Repository-1.309.0
	# Test::Git
	echo dev-perl/Git-Repository
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# Git::Repository 1.309 ( 1.309.0 )
	echo \>=dev-perl/Git-Repository-1.309.0
	# Git::Repository::Plugin
	echo dev-perl/Git-Repository
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
