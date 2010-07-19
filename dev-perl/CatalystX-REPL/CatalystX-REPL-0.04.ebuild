# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="read-eval-print-loop for debugging your Catalyst application"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	dev-perl/namespace-autoclean
	>=dev-perl/Catalyst-Runtime-5.80006
	dev-perl/Carp-REPL
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Expect
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
