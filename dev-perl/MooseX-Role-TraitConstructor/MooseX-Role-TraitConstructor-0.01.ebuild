# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="A wrapper for new that can accept a traits parameter."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Moose-0.40
	virtual/perl-Scalar-List-Utils
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-use-ok
		dev-perl/Test-Exception
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
# Fails in 0.01 for me, see https://rt.cpan.org/Ticket/Display.html?id=53070
#SRC_TEST="do"
