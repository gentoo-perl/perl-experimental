# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="Delegate Extraction based on class"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Moose-0.90
	>=dev-perl/MooseX-Types-0.19
	>=dev-perl/Search-GIN-0.03
	>=dev-perl/namespace-autoclean-0.08
	>=dev-perl/aliased-0.30
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.92
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
