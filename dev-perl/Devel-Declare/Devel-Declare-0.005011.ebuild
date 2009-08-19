# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Adding keywords to perl, in perl"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/B-Hooks-OP-Check-0.18
	>=dev-perl/B-Hooks-EndOfScope-0.05
	dev-perl/Sub-Name
"
DEPEND="
	${RDEPEND}
"
SRC_TEST="do"
