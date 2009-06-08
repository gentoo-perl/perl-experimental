# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=SCHUBIGER
inherit perl-module

DESCRIPTION="Create machine readable date/time with natural parsing logic"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/boolean
	dev-perl/DateTime
	dev-perl/Params-Validate
	dev-perl/List-MoreUtils
	dev-perl/boolean
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"
