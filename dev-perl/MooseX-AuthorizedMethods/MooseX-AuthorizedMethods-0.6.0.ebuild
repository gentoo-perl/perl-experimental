# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=DRUOSO
MODULE_VERSION=0.006
inherit perl-module

DESCRIPTION="Syntax sugar for authorized methods"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_mi_requires() {
	# Moose 1.210.0
	echo \>=dev-perl/Moose-1.210.0
	# aliased
	echo dev-perl/aliased
}
DEPEND="$(perl_mi_requires)"
RDEPEND="$(perl_mi_requires)"
SRC_TEST="do"
