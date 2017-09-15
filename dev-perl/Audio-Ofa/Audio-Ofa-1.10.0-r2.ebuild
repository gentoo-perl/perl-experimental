# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=PEPE
MODULE_VERSION=1.01
inherit perl-module

DESCRIPTION="Perl interface to libofa, an Acoustig Fingerprinting library"

LICENSE="|| ( GPL-2 GPL-3 )" # GPL-2+
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	media-libs/libofa
	virtual/perl-IO-Compress
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/ExtUtils-PkgConfig
	dev-perl/Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
# Test Broken, Suspect different libofa version
#SRC_TEST="do"
