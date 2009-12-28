# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=OSFAMERON
inherit perl-module

DESCRIPTION="Automatically curried subroutines"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Devel-Declare-0.002000
	dev-perl/Sub-Name
	dev-perl/Sub-Current
	dev-perl/B-Hooks-EndOfScope
	dev-perl/Devel-BeginLift
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.42
		dev-perl/Test-Exception
		dev-perl/Test-NoWarnings
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
