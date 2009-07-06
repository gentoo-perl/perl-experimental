# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=JROBINSON
inherit perl-module

DESCRIPTION="Parse and format DB2 dates and times"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND="dev-perl/DateTime
	dev-perl/DateTime-Format-Builder"
DEPEND="${RDEPEND}"
