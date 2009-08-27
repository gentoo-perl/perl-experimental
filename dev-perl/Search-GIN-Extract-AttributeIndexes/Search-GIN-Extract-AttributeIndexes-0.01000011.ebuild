# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="Automatically collect index metadata from MooseX::AttributeIndexes consuming models. "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/MooseX-Types
	>=dev-perl/namespace-autoclean-0.08
	>=dev-perl/MooseX-AttributeIndexes-0.01000300
	>=dev-perl/Moose-0.89
	>=dev-perl/Search-GIN-0.03
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.92
		>=dev-perl/Test-use-ok-0.02
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
