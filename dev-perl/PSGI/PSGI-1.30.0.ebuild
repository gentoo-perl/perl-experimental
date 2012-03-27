# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION="1.03"
inherit perl-module

DESCRIPTION="Perl Web Server Gateway Interface Specification"
LICENSE="CCPL-ShareAlike-1.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
