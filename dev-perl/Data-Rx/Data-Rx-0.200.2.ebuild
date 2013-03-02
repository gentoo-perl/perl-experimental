# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.200002
inherit perl-module

DESCRIPTION='perl implementation of Rx schema system'
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
	echo dev-lang/perl
	# File::Find::Rule
	echo dev-perl/File-Find-Rule
	# JSON 2 ( 2.0.0 )
	echo \>=dev-perl/JSON-2.0.0
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Module::Pluggable 3.7 ( 3.700.0 )
	echo \>=virtual/perl-Module-Pluggable-3.700.0
	# Module::Pluggable::Object
	echo virtual/perl-Module-Pluggable
	# Number::Tolerant
	echo dev-perl/Number-Tolerant
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::More
	echo virtual/perl-Test-Simple
	# autodie
	echo virtual/perl-autodie
	# overload
	echo dev-lang/perl
	# parent
	echo virtual/perl-parent
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Find::Rule
	echo dev-perl/File-Find-Rule
	# File::Temp
	echo virtual/perl-File-Temp
	# JSON
	echo dev-perl/JSON
	# Test::Deep::NoTest
	echo dev-perl/Test-Deep
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# Try::Tiny
	echo dev-perl/Try-Tiny
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
