# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="Log4j for Perl"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=virtual/perl-Test-Simple-0.32 $(comment 0.320.0)
	>=dev-perl/log-dispatch-2.00 $(comment 2.0.0)
	>=dev-perl/AppConfig-1.52 $(comment 1.520.0)
	dev-perl/IO-stringy $(comment IO::Scalar)
	>=virtual/perl-File-Temp-0.12 $(comment 0.120.0)
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
