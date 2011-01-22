# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
ECLASS=3
MODULE_AUTHOR=STEVAN
MODULE_VERSION="0.01"
inherit perl-module

DESCRIPTION="A Catalyst View for Excel::Template::Plus"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Excel-Template-Plus
"
DEPEND="
	virtual/perl-Module-Build
	dev-perl/Test-Exception
"
SRC_TEST="do"
