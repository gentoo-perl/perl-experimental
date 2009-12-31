# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=LBROCARD
inherit perl-module

DESCRIPTION="Provide a progress meter if run interactively"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/Term-ProgressBar
	dev-perl/IO-Interactive
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-MockObject
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
