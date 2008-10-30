# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=MIYAGAWA
inherit perl-module

DESCRIPTION="Abstract Class::DBI's SQL with SQL::Abstract::Limit"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Class-DBI-0.90
	>=dev-perl/SQL-Abstract-Limit-0.1
"
