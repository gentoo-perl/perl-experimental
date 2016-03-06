# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=TYPESTER
MODULE_VERSION="0.07"

inherit perl-module

DESCRIPTION="Find the differences between two arrays"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test +xs"
COMMON_DEPEND="
	>=dev-perl/Algorithm-Diff-1.190.0
	dev-perl/Class-Accessor
	xs? (
		dev-perl/Algorithm-Diff-XS
	)
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do parallel"
