# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KAARE
MODULE_VERSION=0.29
inherit perl-module

DESCRIPTION='turn your Moose class into a singleton'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::Requires
	echo dev-perl/Test-Requires
}
perl_meta_runtime() {
	# Moose 1.10 ( 1.100.0 )
	echo \>=dev-perl/Moose-1.100
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
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
