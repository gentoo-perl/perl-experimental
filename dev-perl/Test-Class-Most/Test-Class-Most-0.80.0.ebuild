# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=OVID
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION='Test Classes the easy way'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.4 ( 0.400.0 )
	echo \>=dev-perl/Module-Build-0.400.0
}
perl_meta_runtime() {
	# Test::Class 0.38 ( 0.380.0 )
	echo \>=dev-perl/Test-Class-0.380.0
	# Test::Most 0.31 ( 0.310.0 )
	echo \>=dev-perl/Test-Most-0.310.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
