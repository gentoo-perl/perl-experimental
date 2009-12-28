# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="transform :list regions into =over/=back to save typing"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/Moose
	>=dev-perl/Pod-Elemental-0.092941
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Differences
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
