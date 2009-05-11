# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MIYAGAWA
inherit perl-module

DESCRIPTION="Log4j for Perl"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/AppConfig-1.52
	>=virtual/perl-File-Temp-0.12
	dev-perl/IO-stringy
	>=dev-perl/log-dispatch-2
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
