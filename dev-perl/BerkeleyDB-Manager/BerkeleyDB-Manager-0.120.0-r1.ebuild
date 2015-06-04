# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION="General purpose BerkeleyDB wrapper"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Test::use::ok -> Test-Simple | ?
RDEPEND="
	>=dev-perl/BerkeleyDB-0.360.0
	>=dev-perl/Data-Stream-Bulk-0.30.0
	dev-perl/Moose
	>=dev-perl/namespace-clean-0.80.0
	dev-perl/Path-Class
	dev-perl/Test-Exception
	>=dev-perl/Test-TempDir-0.40.0
	|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
