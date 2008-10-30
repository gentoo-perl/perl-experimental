# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=JROBINSON
inherit perl-module

DESCRIPTION="manipulate structured data definitions (SQL and more)"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/module-build
	dev-perl/Class-Base
	>=dev-perl/Class-Data-Inheritable-0.02
	dev-perl/Class-MakeMethods
	dev-perl/Log-Log4perl
	dev-perl/Parse-RecDescent
	dev-perl/Class-Accessor
	dev-perl/DBI
	>=dev-perl/yaml-0.39
"
