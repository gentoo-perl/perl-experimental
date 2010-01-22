# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=STEFFENW
inherit perl-module

DESCRIPTION="Tying a subroutine, function or method to a hash"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="recommended"
COMMON_DEPEND="
	dev-perl/Params-Validate
	recommended? (
		>=dev-perl/Test-Pod-1.14
		>=dev-perl/Test-Pod-Coverage-1.04
		virtual/perl-Test-Simple
	)
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
	dev-perl/Test-NoWarnings
	dev-perl/Test-Exception
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
