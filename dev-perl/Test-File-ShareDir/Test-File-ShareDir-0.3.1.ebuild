# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.3.1
inherit perl-module

DESCRIPTION='Create a Fake ShareDir for your modules for testing.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# File::Copy::Recursive
	echo dev-perl/File-Copy-Recursive
	# File::ShareDir 1.00 ( 1.0.0 )
	echo \>=dev-perl/File-ShareDir-1.0.0
	# File::Temp
	echo virtual/perl-File-Temp
	# Path::Class::Dir
	echo dev-perl/Path-Class
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
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
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
