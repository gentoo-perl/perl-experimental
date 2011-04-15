# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=JGOULAH
MODULE_VERSION="1.2000"
inherit perl-module

DESCRIPTION="A Logging Role for Moose"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Moose
	>=dev-perl/Log-Dispatch-Config-0.50.0
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/IO-stringy
	virtual/perl-Test-Simple
	dev-perl/Test-Exception
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
