# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BARBIE
inherit perl-module

DESCRIPTION="Provides an index for current CPAN distributions"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	dev-perl/CPAN-DistnameInfo
	dev-perl/File-Slurp
	virtual/perl-File-Temp
	virtual/perl-IO-Zlib
	dev-perl/libwww-perl
	virtual/perl-version
"
DEPEND="
	${COMMON_DEPEND}
	test? (
			dev-perl/Test-Pod
			dev-perl/Test-Pod-Coverage
			dev-perl/Test-CPAN-Meta
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
