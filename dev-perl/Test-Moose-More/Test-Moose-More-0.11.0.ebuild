# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RSRCHBOY
MODULE_VERSION=0.011
inherit perl-module

DESCRIPTION='More tools for testing Moose packages'
LICENSE=" LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Data::OptList
	echo dev-perl/Data-OptList
	# Moose::Util
	echo dev-perl/Moose
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Test::Builder
	echo virtual/perl-Test-Simple
	# Test::Moose
	echo dev-perl/Moose
	# Test::More
	echo virtual/perl-Test-Simple
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Moose
	echo dev-perl/Moose
	# Moose::Role
	echo dev-perl/Moose
	# Test::Builder::Tester
	echo virtual/perl-Test-Simple
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
