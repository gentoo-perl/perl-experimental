# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=TONYC
MODULE_VERSION=0.95
inherit perl-module

DESCRIPTION='Perl extension for Generating 24 bit Images'
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
	# Scalar::Util 1 ( 1.0.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.0.0
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
	# XSLoader
	echo virtual/perl-XSLoader
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
