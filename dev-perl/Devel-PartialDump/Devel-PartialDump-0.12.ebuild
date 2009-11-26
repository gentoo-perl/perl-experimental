# Copyright 1999-2009 Gentoo Foundation
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
RDEPEND="
	test? ( dev-perl/Test-use-ok )
	dev-perl/Any-Moose
	>=dev-perl/namespace-clean-0.08
	dev-perl/Sub-Exporter
"
DEPEND="
	${RDEPEND}
"
SRC_TEST="do"
