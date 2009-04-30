# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RIBASUSHI
inherit perl-module

DESCRIPTION="Extensible and flexible object <-> relational mapper."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="sqlite"
RDEPEND="
	>=dev-perl/Data-Page-2.00
	>=dev-perl/SQL-Abstract-1.51
	>=dev-perl/SQL-Abstract-Limit-0.13
	>=dev-perl/Class-C3-Componentised-1.0004
	dev-perl/Carp-Clan
	>=dev-perl/DBI-1.40
	dev-perl/Module-Find
	dev-perl/Class-Inspector
	>=dev-perl/Class-Accessor-Grouped-0.08003
	>=dev-perl/JSON-Any-1.17
	>=dev-perl/Scope-Guard-0.03
	dev-perl/Path-Class
	>=dev-perl/Sub-Name-0.04
	>=dev-perl/MRO-Compat-0.09
	>=dev-perl/SQL-Translator-0.09004
	sqlite? ( >=dev-perl/DBD-SQLite-1.11 )
"
DEPEND="${RDEPEND}"
#DEPEND="
#	>=dev-perl/DBD-SQLite-1.21
#	${RDEPEND}
#"

SRC_TEST=do
