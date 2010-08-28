# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=CHORNY
inherit perl-module

DESCRIPTION="Padre and XML"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=app-editors/padre-0.65
	>=dev-perl/XML-LibXML-1.67
	>=dev-perl/XML-Tidy-1
	dev-perl/File-Slurp
"
DEPEND="
	virtual/perl-Module-Build
	virtual/perl-Test-Simple
	${RDEPEND}
"
SRC_TEST="do"
