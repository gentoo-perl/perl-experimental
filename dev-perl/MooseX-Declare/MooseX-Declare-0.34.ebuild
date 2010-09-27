# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Declarative syntax for Moose"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Devel-Declare-0.005011
	>=dev-perl/namespace-clean-0.11
	>=dev-perl/namespace-autoclean-0.09
	>=dev-perl/Moose-0.90
	>=dev-perl/MooseX-Method-Signatures-0.36
	>=dev-perl/MooseX-Role-Parameterized-0.12
	>=dev-perl/MooseX-Types-0.20
	dev-perl/List-MoreUtils
"
DEPEND="
	${RDEPEND}
	test? (
	  dev-perl/Test-Exception
	  dev-perl/Test-NoWarnings
	)
"
SRC_TEST="do"
