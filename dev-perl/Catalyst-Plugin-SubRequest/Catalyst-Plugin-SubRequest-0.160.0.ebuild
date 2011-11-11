# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.16"
inherit perl-module

DESCRIPTION="Make subrequests to actions in Catalyst"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.30
"
DEPEND="
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
