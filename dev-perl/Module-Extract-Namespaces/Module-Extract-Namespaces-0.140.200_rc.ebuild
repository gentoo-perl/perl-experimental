# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BDFOY
MODULE_VERSION="0.14_02"
inherit perl-module

DESCRIPTION="extract the package declarations from a module"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS=""
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/PPI
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple $(comment Test::More)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
