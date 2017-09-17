# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MIKO
MODULE_VERSION=1.21
inherit perl-module

DESCRIPTION='String::Util -- String processing utilities'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_runtime() {
	# perl 5.003 ( 5.3.0 )
	echo \>=dev-lang/perl-5.3.0
}
DEPEND="
	dev-perl/Module-Build
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
