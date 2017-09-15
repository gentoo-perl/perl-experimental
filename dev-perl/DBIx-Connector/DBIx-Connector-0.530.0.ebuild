# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=DWHEELER
MODULE_VERSION=0.53
inherit perl-module

DESCRIPTION='Fast, safe DBI connection and transaction management'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.30 ( 0.300.0 )
	echo \>=dev-perl/Module-Build-0.30.00
}
perl_meta_build() {
	# Module::Build 0.30 ( 0.300.0 )
	echo \>=dev-perl/Module-Build-0.30.00
	# Test::MockModule 0.05 ( 0.50.0 )
	echo \>=dev-perl/Test-MockModule-0.50.0
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# DBI 1.605 ( 1.605.0 )
	echo \>=dev-perl/DBI-1.605.0
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
