# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=IKEBE
inherit perl-module

DESCRIPTION="emulate MySQL PASSWORD() function"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/Digest-SHA1
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
