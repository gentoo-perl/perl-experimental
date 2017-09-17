# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=AMBS
MODULE_VERSION=0.02
MODULE_A="irDancer/${PN}-${MODULE_VERSION}.${MODULE_A_EXT:-tar.gz}"
inherit perl-module

DESCRIPTION='Simple Emailesque support for Dancer2'
LICENSE="Artistic"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Dancer2 0.05 ( 0.50.0 )
	echo \>=dev-perl/Dancer2-0.50.0
	# Emailesque 1.200007 ( 1.200.7 )
	echo \>=dev-perl/Emailesque-1.200.7
	# perl 5.006 ( 5.6.0 )
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
SRC_TEST="do parallel"
