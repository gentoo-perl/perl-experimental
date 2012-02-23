# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DWHEELER
MODULE_VERSION=0.33
inherit perl-module

DESCRIPTION='Zap Windows Western Gremlins'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=virtual/perl-Module-Build-0.36
}
perl_meta_build() {
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=virtual/perl-Module-Build-0.36
	# Test::More 0.17 ( 0.170.0 )
	echo \>=virtual/perl-Test-Simple-0.17
}
perl_meta_runtime() {
	# perl 5.006002 ( 5.6.2 )
	echo \>=dev-lang/perl-5.6.2
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
