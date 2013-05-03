# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KENTNL
MODULE_VERSION="0.01002312"
inherit perl-module

DESCRIPTION="Delegate Extraction based on class"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Moose-0.900.0
	>=dev-perl/MooseX-Types-0.190.0
	>=dev-perl/Search-GIN-0.30.0
	>=dev-perl/namespace-autoclean-0.80.0
	>=dev-perl/aliased-0.300.0
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	test? (
		>=virtual/perl-Test-Simple-0.92
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
