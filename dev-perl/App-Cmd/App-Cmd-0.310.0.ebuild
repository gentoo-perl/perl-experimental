# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RJBS
MODULE_VERSION="0.310"
inherit perl-module

DESCRIPTION="write command line apps with less suffering "

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	dev-perl/Data-OptList
	>=dev-perl/Class-Load-0.06
	dev-perl/Getopt-Long-Descriptive
	dev-perl/IO-TieCombine
	virtual/perl-Module-Pluggable
	dev-perl/String-RewritePrefix
	>=dev-perl/Sub-Exporter-0.975
	dev-perl/Sub-Install
"
DEPEND="
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.96
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
