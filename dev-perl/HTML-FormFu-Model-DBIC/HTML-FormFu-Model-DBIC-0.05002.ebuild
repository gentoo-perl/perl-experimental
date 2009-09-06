# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=CFRANKS
inherit perl-module

DESCRIPTION="HTML Form Creation, Rendering and Validation Framework"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/DBD-SQLite
	>=dev-perl/DBIx-Class-0.08106
	>=dev-perl/HTML-FormFu-0.05000
"
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/DateTime-Format-SQLite
	)
"
NO_TEST_MULTI=1
SRC_TEST=do
