# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.04"
inherit perl-module

DESCRIPTION="Invoke callbacks on construction of entersub OPs for certain CVs"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	virtual/perl-parent
	dev-perl/B-Utils
	dev-perl/B-Hooks-OP-Check
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/extutils-depends
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
