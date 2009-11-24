# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="Time-Relative versioning"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/DateTime-0.50
	dev-perl/MooseX-Types
	>=dev-perl/MooseX-Has-Sugar-0.0404
	>=dev-perl/namespace-autoclean-0.08
	>=dev-perl/MooseX-Types-DateTime-ButMaintained-0.08
	>=dev-perl/Dist-Zilla-1.092310
	>=dev-perl/Moose-0.89
	>=dev-perl/MooseX-StrictConstructor-0.08
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
