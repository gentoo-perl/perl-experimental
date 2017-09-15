# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.35
inherit perl-module

DESCRIPTION="Declarative syntax for Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Devel-Declare-0.5.11
	>=dev-perl/namespace-clean-0.110.0
	>=dev-perl/namespace-autoclean-0.90.0
	>=dev-perl/Moose-0.900.0
	>=dev-perl/MooseX-Method-Signatures-0.360
	>=dev-perl/MooseX-Role-Parameterized-0.120.0
	>=dev-perl/MooseX-Types-0.200.0
	dev-perl/List-MoreUtils
"
DEPEND="
	${RDEPEND}
	test? (
	  dev-perl/Test-Exception
	  dev-perl/Test-NoWarnings
	)
"
