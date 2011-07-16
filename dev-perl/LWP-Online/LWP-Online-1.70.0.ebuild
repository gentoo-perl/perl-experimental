# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=ADAMK
MODULE_VERSION="1.07"
inherit perl-module

DESCRIPTION="Does your process have access to the web"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/URI
	dev-perl/libwww-perl
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.42
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
