# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.103000
inherit perl-module

DESCRIPTION="upload things to the CPAN"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	virtual/perl-File-Spec
	>=dev-perl/Getopt-Long-Descriptive-0.084
	dev-perl/libwww-perl
	dev-perl/TermReadKey
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	virtual/perl-Test-Simple
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
