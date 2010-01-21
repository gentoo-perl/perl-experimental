# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=DROLSKY
inherit perl-module

DESCRIPTION="turn your Moose class into a singleton"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Moose-0.82
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Scalar-List-Utils
	virtual/perl-Test-Simple
	dev-perl/Test-Exception
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
