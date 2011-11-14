# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
MODULE_VERSION="0.093330"
inherit perl-module

DESCRIPTION="read a POD document as a series of trivial events
"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Mixin-Linewise-0.001
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Deep
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
