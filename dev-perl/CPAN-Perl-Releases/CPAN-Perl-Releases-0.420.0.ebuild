# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.42
inherit perl-module

DESCRIPTION='Mapping Perl releases on CPAN to the location of the tarballs'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
}
perl_meta_runtime() {
	# perl v5.6.0 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
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
