# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=GRODITI
MODULE_VERSION="0.001002"
inherit perl-module

DESCRIPTION="A set of commonly-used type constraints that do not ship with Moose by default"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Moose-0.39
	>=dev-perl/MooseX-Types-0.04
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.62
		dev-perl/Test-Exception
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
