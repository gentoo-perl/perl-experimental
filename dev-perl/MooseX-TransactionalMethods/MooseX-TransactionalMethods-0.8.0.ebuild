# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=DRUOSO
MODULE_VERSION=0.008
inherit perl-module

DESCRIPTION="Syntax sugar for transactional methods"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_mi_requires() {
	echo \>=dev-perl/Moose-1.21
	echo dev-perl/aliased
}
DEPEND="$(perl_mi_requires)"
RDEPEND="$(perl_mi_requires)"
SRC_TEST="do"
