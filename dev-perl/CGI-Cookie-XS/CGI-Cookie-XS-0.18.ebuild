# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=AGENT
inherit perl-module

DESCRIPTION="HTTP Cookie parser in pure C"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	virtual/perl-Filter
"
DEPEND="
	${RDEPEND}
"
SRC_TEST="do"
