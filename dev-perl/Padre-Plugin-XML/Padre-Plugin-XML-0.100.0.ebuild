# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=CHORNY
MODULE_VERSION=0.10
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
	dev-perl/Module-Build
	virtual/perl-Test-Simple
	${RDEPEND}
"
