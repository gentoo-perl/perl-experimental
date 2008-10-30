# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=DAVEBAIRD
inherit perl-module

DESCRIPTION="portable LIMIT emulation"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="dev-perl/module-build
	perl-core/Test-Simple
	dev-perl/Test-Exception
	dev-perl/DBI
	>=dev-perl/SQL-Abstract-1.20"
