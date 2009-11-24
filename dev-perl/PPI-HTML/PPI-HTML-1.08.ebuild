# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Generate syntax-hightlighted HTML for Perl using PPI"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/PPI-0.990
	>=dev-perl/CSS-Tiny-1.10
	>=dev-perl/Params-Util-0.05
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-File-Spec-0.80
		>=virtual/perl-Test-Simple-0.47
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
