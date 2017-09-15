# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.012
inherit perl-module

DESCRIPTION='File finder using Path::Class'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Data::Clone
	echo dev-perl/Data-Clone
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Number::Compare 0.02 ( 0.20.0 )
	echo \>=dev-perl/Number-Compare-0.20.0
	# Path::Class::Dir
	echo dev-perl/Path-Class
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Text::Glob
	echo dev-perl/Text-Glob
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# perl 5.010 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# re
	echo dev-lang/perl
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
	# warnings::register
	echo dev-lang/perl
}
perl_meta_test() {
	# Config
	#echo unresolved
	# Exporter
	echo virtual/perl-Exporter
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# File::pushd
	echo dev-perl/File-pushd
	# Path::Class
	echo dev-perl/Path-Class
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.920.0
	# autodie
	echo virtual/perl-autodie
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
