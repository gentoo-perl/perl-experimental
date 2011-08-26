# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=JJNAPIORK
MODULE_VERSION="0.015"
inherit perl-module

DESCRIPTION="EXPERIMENTAL Declarative Syntax for Catalyst Applications"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true;}
COMMON_DEPEND="
	>=dev-perl/Class-Inspector-1.24 $(comment 1.240.0)
	>=dev-perl/Perl6-Junction-1.400.0
	>=dev-perl/aliased-0.300.0
	>=virtual/perl-parent-0.221 $(comment 0.221.0)
	>=dev-perl/Data-Dump-1.14 $(comment 1.140.0)
	>=dev-perl/Catalyst-Runtime-5.800.250
	>=dev-perl/CLASS-1.0 $(comment 1.0.0)
	>=dev-perl/Devel-Declare-0.006000 $(comment 0.6.0)
	>=dev-perl/Moose-1.14 $(comment 1.140.0)
	>=dev-perl/MooseX-Declare-0.340.0
	>=dev-perl/MooseX-MethodAttributes-0.240.0
	>=dev-perl/MooseX-Role-Parameterized-0.190.0
	>=dev-perl/MooseX-Types-0.240.0
	>=dev-perl/MooseX-Method-Signatures-0.360 $(comment 0.360.0)

	>=dev-perl/Catalyst-Controller-ActionRole-0.15 $(comment 0.150.0)
	>=dev-perl/Data-Pond-0.002 $(comment 0.2.0)
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.96
	>=dev-perl/Test-Output-0.16
	dev-perl/Catalyst-Runtime
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
