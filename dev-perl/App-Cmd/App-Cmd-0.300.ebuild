# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="write command line apps with less suffering "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Getopt-Long-Descriptive-0.075
	virtual/perl-Module-Pluggable
	>=dev-perl/Sub-Exporter-0.975
	dev-perl/Sub-Install
	>=dev-lang/perl-5.6.0
"
DEPEND="
	>=dev-perl/IO-TieCombine-1
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
