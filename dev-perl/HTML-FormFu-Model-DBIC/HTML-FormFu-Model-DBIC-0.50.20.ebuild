# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=CFRANKS
MODULE_VERSION="0.05002"
inherit perl-module

DESCRIPTION="HTML Form Creation, Rendering and Validation Framework"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	dev-perl/DBD-SQLite
	>=dev-perl/DBIx-Class-0.08106
	>=dev-perl/HTML-FormFu-0.50.0
"
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/DateTime-Format-SQLite
	)
"
SRC_TEST=do
