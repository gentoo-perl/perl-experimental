# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=CHROMATIC
inherit perl-module

DESCRIPTION="Hack around people calling UNIVERSAL::can() as a function"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	virtual/perl-Scalar-List-Utils
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-Module-Build-0.33
	test? (
		>=virtual/perl-Test-Simple-0.60
	)
"
SRC_TEST="do"
