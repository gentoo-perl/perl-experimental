# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Unicode aware Catalyst"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.70
	dev-perl/MRO-Compat
"
DEPEND="
	dev-perl/Test-WWW-Mechanize-Catalyst
	dev-perl/IO-stringy
	dev-perl/Test-use-ok
	${RDEPEND}
"

SRC_TEST=do
