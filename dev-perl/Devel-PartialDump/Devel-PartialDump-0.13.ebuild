# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Partial dumping of data structures, optimized for argument printing."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
COMMON_DEPEND="
	dev-perl/Moose
	>=dev-perl/namespace-clean-0.08
	dev-perl/Sub-Exporter
"
RDEPEND="${COMMON_DEPEND}"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-use-ok
		dev-perl/Test-Warn
	)
"
SRC_TEST="do"
