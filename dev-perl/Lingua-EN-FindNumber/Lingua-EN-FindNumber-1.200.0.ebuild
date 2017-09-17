# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=TMTM
MODULE_VERSION=1.2
inherit perl-module

DESCRIPTION='Locate (written) numbers in English text'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_runtime() {
	# Lingua::EN::Words2Nums
	echo dev-perl/Lingua-EN-Words2Nums
}
DEPEND="
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
