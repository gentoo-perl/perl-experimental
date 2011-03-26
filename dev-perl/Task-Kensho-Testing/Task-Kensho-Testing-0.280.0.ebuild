# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (testing tools)"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+testsimple +testmost +testexception +testpod +testpodcoverage
+testmemorycycle +develcover"
COMMON_DEPEND="
	testsimple? ( virtual/perl-Test-Simple )
	testmost? ( dev-perl/Test-Most )
	testexception? ( dev-perl/Test-Exception )
	testpod? ( dev-perl/Test-Pod )
	testpodcoverage? ( dev-perl/Test-Pod-Coverage )
	testmemorycycle? ( dev-perl/Test-Memory-Cycle )
	develcover? ( dev-perl/Devel-Cover )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
