# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="JSON View Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/JSON-Any-1.15
	dev-perl/MRO-Compat
"
DEPEND="
	${RDEPEND}
	test? ( dev-perl/yaml )
"
SRC_TEST=do
