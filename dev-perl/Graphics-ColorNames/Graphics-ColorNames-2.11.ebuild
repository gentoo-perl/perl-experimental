# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RRWO
inherit perl-module

DESCRIPTION="defines RGB values for common color names"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="recommended"
COMMON_DEPEND="
	virtual/perl-File-Spec
	virtual/perl-IO
	>=virtual/perl-Module-Load-0.10
	virtual/perl-Module-Loaded
	recommended? (
		>=dev-perl/Color-Library-0.02
		dev-perl/Tie-Sub
		dev-perl/Test-Pod-Coverage
		>=dev-perl/Test-Pod-1.00
		dev-perl/Test-Portability-Files
		>=dev-perl/Pod-Readme-0.09
	)
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Test-Exception
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
