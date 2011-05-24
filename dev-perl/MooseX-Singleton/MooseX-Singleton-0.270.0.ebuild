# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=DROLSKY
MODULE_VERSION=0.27
inherit perl-module

DESCRIPTION="turn your Moose class into a singleton"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Moose-1.10 $(comment 1.100)
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment build requires)
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
	dev-perl/Test-Requires
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
