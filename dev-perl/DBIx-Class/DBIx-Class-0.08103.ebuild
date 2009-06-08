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
IUSE=""

RDEPEND="
	>=dev-perl/DBD-SQLite-1.25
	>=dev-perl/Data-Page-2.00
	>=dev-perl/SQL-Abstract-1.55
	>=dev-perl/SQL-Abstract-Limit-0.13
	>=dev-perl/Class-C3-Componentised-1.0005
	>=dev-perl/Carp-Clan-6.0
	>=dev-perl/DBI-1.605
	>=dev-perl/Module-Find-0.06
	>=dev-perl/Class-Inspector-1.24
	>=dev-perl/Class-Accessor-Grouped-0.08003
	>=dev-perl/JSON-Any-1.18
	>=dev-perl/Scope-Guard-0.03
	>=dev-perl/Path-Class-0.16
	>=dev-perl/Sub-Name-0.04
	>=dev-perl/MRO-Compat-0.09
	>=dev-perl/SQL-Translator-0.09004
"
DEPEND="
	>=dev-perl/DBD-SQLite-1.21
	${RDEPEND}
"

SRC_TEST=do
