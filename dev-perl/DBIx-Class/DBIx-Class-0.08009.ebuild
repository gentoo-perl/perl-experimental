# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=JROBINSON
inherit perl-module

DESCRIPTION="Extensible and flexible object <-> relational mapper."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="sqlite"
DEPEND="
	>=dev-perl/Data-Page-2.00
	>=dev-perl/SQL-Abstract-1.20
	>=dev-perl/SQL-Abstract-Limit-0.10.1
	>=dev-perl/Class-C3-0.13
	dev-perl/Class-C3-Componentised
	dev-perl/Carp-Clan
	>=dev-perl/DBI-1.40
	dev-perl/Module-Find
	dev-perl/Class-Inspector
	>=dev-perl/Class-Accessor-Grouped-0.05002
	>=dev-perl/JSON-Any-1.00
	>=dev-perl/Scope-Guard-0.03
	sqlite? ( >=dev-perl/DBD-SQLite-1.11 )
"
