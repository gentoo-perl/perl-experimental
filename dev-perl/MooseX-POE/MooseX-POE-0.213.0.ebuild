# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=GETTY
MODULE_VERSION=0.212
inherit perl-module

DESCRIPTION="The Illicit Love Child of Moose and POE"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Moose-0.90 $(comment 0.900.0)
	>=dev-perl/POE-1.004 $(comment 1.4.0)
"
DEPEND="${RDEPEND}
>=virtual/perl-ExtUtils-MakeMaker-6.31 $(comment 6.310.0)
	test? (
		>=virtual/perl-Test-Simple-0.90 $(comment Test::More 0.900.0)
		>=dev-perl/Test-Fatal-0.003 $(comment 0.3.0)
	)
"
SRC_TEST="do"
