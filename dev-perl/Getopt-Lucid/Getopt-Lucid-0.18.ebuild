# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=DAGOLDEN
inherit perl-module

DESCRIPTION="Clear, readable syntax for command line processing"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Exception-Class-1.23
	>=virtual/perl-Storable-2.16
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-perl/Exception-Class-TryCatch-1.1
	test? (
		>=virtual/perl-Test-Simple-0.62
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
