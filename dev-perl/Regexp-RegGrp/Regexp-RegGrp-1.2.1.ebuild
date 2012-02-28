# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=NEVESENIN
MODULE_VERSION=1.002001
inherit perl-module

DESCRIPTION='Groups a regular expressions collection'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.56 ( 6.560.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.56
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.56 ( 6.560.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.56
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# perl v5.8.9 ( 5.8.9 )
	echo \>=dev-lang/perl-5.8.9
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
