# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=LAMMEL
MODULE_VERSION="0.40"
inherit perl-module

DESCRIPTION="A Logging Role for Moose based on Log::Log4perl"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Moose
	dev-perl/Log-Log4perl
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/IO-stringy
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
