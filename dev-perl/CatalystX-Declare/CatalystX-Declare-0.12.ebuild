# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=PHAYLON
MODULE_VERSION="0.012"
inherit perl-module

DESCRIPTION="EXPERIMENTAL Declarative Syntax for Catalyst Applications"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/Class-Inspector-1.24
	>=dev-perl/Perl6-Junction-1.400.0
	>=dev-perl/aliased-0.300.0
	>=virtual/perl-parent-0.221
	>=dev-perl/Data-Dump-1.14
	>=dev-perl/Catalyst-Runtime-5.800.120
	>=dev-perl/CLASS-1.0
	>=dev-perl/Devel-Declare-0.005011
	>=dev-perl/Moose-0.89
	>=dev-perl/MooseX-AttributeHelpers-0.21
	>=dev-perl/MooseX-Declare-0.300
	>=dev-perl/MooseX-MethodAttributes-0.160.0
	>=dev-perl/MooseX-Role-Parameterized-0.130.0
	>=dev-perl/MooseX-Types-0.20
	>=dev-perl/MooseX-Method-Signatures-0.260
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.92
		>=dev-perl/Test-Output-0.16
		dev-perl/Catalyst-Runtime
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
