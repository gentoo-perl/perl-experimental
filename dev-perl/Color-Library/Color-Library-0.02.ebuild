# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RKRIMEN
inherit perl-module

DESCRIPTION="An easy-to-use and comprehensive named-color library"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	virtual/perl-Module-Pluggable
	dev-perl/Class-Accessor
	dev-perl/Class-Data-Inheritable
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
