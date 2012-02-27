# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=LEONT
MODULE_VERSION=0.011
inherit perl-module

DESCRIPTION='Facility for creating read-only scalars, arrays, and hashes'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp
	# echo dev-perl/Carp
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Storable
	echo virtual/perl-Storable
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
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
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
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
