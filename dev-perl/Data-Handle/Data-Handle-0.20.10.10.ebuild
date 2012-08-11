# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.02001001
inherit perl-module

DESCRIPTION='A Very simple interface to the __DATA__  file handle.'
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
	# Carp 1.22 ( 1.220.0 )
	echo \>=virtual/perl-Carp-1.220.0
	# IO::File
	echo virtual/perl-IO
	# Package::Stash
	echo dev-perl/Package-Stash
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Symbol
	echo dev-lang/perl
	# Term::ANSIColor
	echo virtual/perl-Term-ANSIColor
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# overload
	echo dev-lang/perl
	# parent
	echo virtual/perl-parent
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::Handle
	echo virtual/perl-IO
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
