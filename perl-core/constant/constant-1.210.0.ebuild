# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=SAPER
MODULE_VERSION=1.21
inherit perl-module

DESCRIPTION="Perl pragma to declare constants"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	test? (
		virtual/perl-Test-Simple $(comment Test::More)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
