# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=CREAMYG
MODULE_VERSION="0.952"
inherit perl-module

DESCRIPTION="Perl interface to Snowball stemmers."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND=""
DEPEND="
	virtual/perl-Module-Build
	virtual/perl-ExtUtils-CBuilder
	virtual/perl-ExtUtils-ParseXS
	test? (
		virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
