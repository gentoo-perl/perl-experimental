# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=DROLSKY
inherit perl-module

DESCRIPTION="Parse and format MySQL dates and times"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/DateTime
	>=dev-perl/DateTime-Format-Builder-0.60
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST=do
