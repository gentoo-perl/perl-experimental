# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=PEVANS
MODULE_VERSION=2.001
inherit perl-module

DESCRIPTION='networking constants and support functions'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::CBuilder
	echo virtual/perl-ExtUtils-CBuilder
	# ExtUtils::Constant 0.23 ( 0.230.0 )
	echo \>=virtual/perl-ExtUtils-Constant-0.230.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# perl 5.006001 ( 5.6.1 )
	echo \>=dev-lang/perl-5.6.1
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
