# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.106
inherit perl-module

DESCRIPTION='write your linewise code for handles; this does the rest'
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
	# echo virtual/perl-Carp
	# IO::File
	echo virtual/perl-IO
	# PerlIO::utf8_strict
	echo dev-perl/PerlIO-utf8_strict
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
perl_meta_test() {
	# Encode
	echo virtual/perl-Encode
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
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
