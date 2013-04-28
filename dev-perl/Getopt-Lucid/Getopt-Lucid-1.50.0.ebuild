# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=1.05
inherit perl-module

DESCRIPTION='Clear, readable syntax for command line processing'
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
	# echo dev-lang/perl
	# Exception::Class 1.23 ( 1.230.0 )
	echo \>=dev-perl/Exception-Class-1.230.0
	# Exporter
	echo virtual/perl-Exporter
	# Storable 2.16 ( 2.160.0 )
	echo \>=virtual/perl-Storable-2.16
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Exception::Class::TryCatch 1.10 ( 1.100.0 )
	echo \>=dev-perl/Exception-Class-TryCatch-1.100.0
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Find
	echo dev-lang/perl
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::More 0.62 ( 0.620.0 )
	echo \>=virtual/perl-Test-Simple-0.62
	# vars
	echo dev-lang/perl
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
