# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=1.59
inherit perl-module

DESCRIPTION='Math-Complex'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Config
	#echo unresolved
	# Exporter
	echo virtual/perl-Exporter
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# Scalar::Util 1.11 ( 1.110.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.110.0
	# Test::More
	echo virtual/perl-Test-Simple
	# overload
	echo dev-lang/perl
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
