# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RKRIMEN
inherit perl-module

DESCRIPTION="Inject components into your Catalyst application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
COMMON_DEPEND="
	dev-perl/Class-Inspector
	>=dev-perl/Catalyst-Runtime-5.800.0
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Most
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST=do
