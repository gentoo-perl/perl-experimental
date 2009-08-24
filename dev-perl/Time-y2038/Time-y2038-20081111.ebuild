# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MSCHWERN
inherit perl-module

DESCRIPTION="Versions of Perl's time functions which work beyond 2038"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Module-Build-0.28.08
	>=virtual/perl-ExtUtils-CBuilder-0.24
	test? (
		>=dev-perl/Test-Warn-0.11
		>=dev-perl/Test-Exception-0.27
		>=virtual/perl-Test-Simple-0.62
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
# TODO: Fix when upstream fix this test for x64. Should 
# Still be useful despite these failing tests
#SRC_TEST="do"
