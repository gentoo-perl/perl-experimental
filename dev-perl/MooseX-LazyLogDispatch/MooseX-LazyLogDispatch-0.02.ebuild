# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BLBLACK
inherit perl-module

DESCRIPTION="A Logging Role for Moose"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/Moose
	>=dev-perl/Log-Dispatch-Config-0.05
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.42
		>=dev-perl/IO-stringy-2.110
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
