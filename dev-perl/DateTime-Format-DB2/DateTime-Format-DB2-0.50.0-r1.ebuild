# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=JROBINSON
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="Parse and format DB2 dates and times"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="dev-perl/DateTime
	dev-perl/DateTime-Format-Builder"
DEPEND="${RDEPEND}"
