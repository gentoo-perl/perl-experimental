# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="Fine grained cloning support for Moose objects."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Data-Visitor-0.24
	dev-perl/Hash-Util-FieldHash-Compat
	>=dev-perl/Moose-0.74
	>=dev-perl/namespace-clean-0.08
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-use-ok
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
