# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.200006
inherit perl-module

DESCRIPTION='read multiple hunks of data out of your DATA section'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Encode
	echo virtual/perl-Encode
	# MRO::Compat 0.09 ( 0.90.0 )
	echo \>=dev-perl/MRO-Compat-0.90.0
	# Sub::Exporter 0.979 ( 0.979.0 )
	echo \>=dev-perl/Sub-Exporter-0.979.0
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
perl_meta_test() {
	# Test::FailWarnings
	echo dev-perl/Test-FailWarnings
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# base
	# echo virtual/perl-base
	# lib
	# echo virtual/perl-lib
	# utf8
	# echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
