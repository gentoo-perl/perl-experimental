# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BINGOS
inherit perl-module

DESCRIPTION="A Module::Install extension to automatically convert POD to a README"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Module-Install-0.85
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-perl/Capture-Tiny-0.05
	test? (
		>=virtual/perl-Test-Simple-0.47
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
