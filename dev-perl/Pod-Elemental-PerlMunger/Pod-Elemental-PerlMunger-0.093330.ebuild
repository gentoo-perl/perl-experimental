# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="a thing that takes a string of Perl and rewrites its documentation"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/PPI
	>=dev-perl/Pod-Elemental-0.92.941
	dev-perl/namespace-autoclean
	dev-perl/Moose
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
