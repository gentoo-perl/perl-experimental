# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=TYPESTER

# This voodoo strips the 00 off the end.
MY_P="${PN}-${PV%000}"
S="${WORKDIR}/${MY_P}"

inherit perl-module

DESCRIPTION="Find the differences between two arrays"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test +xs"
COMMON_DEPEND="
	>=dev-perl/Algorithm-Diff-1.19
	dev-perl/Class-Accessor
	xs? (
		dev-perl/Algorithm-Diff-XS
	)
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
