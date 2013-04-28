# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.3.3
inherit perl-module

DESCRIPTION='Create a Fake ShareDir for your modules for testing.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=virtual/perl-Module-Build-0.400.400
}
perl_meta_build() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=virtual/perl-Module-Build-0.400.400
}
perl_meta_runtime() {
	# Carp
	# echo dev-lang/perl
	# File::Copy::Recursive
	echo dev-perl/File-Copy-Recursive
	# File::ShareDir 1.00 ( 1.0.0 )
	echo \>=dev-perl/File-ShareDir-1.0.0
	# File::Temp
	echo virtual/perl-File-Temp
	# Path::Tiny
	echo dev-perl/Path-Tiny
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Cwd
	echo virtual/perl-File-Spec
	# File::Find
	echo dev-lang/perl
	# FindBin
	echo dev-lang/perl
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
