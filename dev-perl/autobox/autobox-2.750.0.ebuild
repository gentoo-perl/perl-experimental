# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=CHOCOLATE
MODULE_VERSION=2.75
inherit perl-module

DESCRIPTION="Call methods on native types"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Scope-Guard-0.20
"
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/Test-Pod
	)
"
SRC_TEST=do
