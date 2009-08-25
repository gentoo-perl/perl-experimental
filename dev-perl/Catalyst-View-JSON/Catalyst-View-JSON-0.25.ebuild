# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MIYAGAWA
inherit perl-module

DESCRIPTION="JSON View Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/JSON-Any-1.15
	dev-perl/MRO-Compat
"
DEPEND="${RDEPEND}"
SRC_TEST=do
