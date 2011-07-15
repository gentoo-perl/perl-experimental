# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=TONYC
MODULE_VERSION=0.84
inherit perl-module

DESCRIPTION="Perl extension for Generating 24 bit Images"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
#KEYWORDS=""
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND=""
DEPEND="
	test? (
		>=virtual/perl-Test-Simple-0.47
	)
"
SRC_TEST=do
