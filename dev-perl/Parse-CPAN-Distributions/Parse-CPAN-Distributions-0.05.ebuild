# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=BARBIE
inherit perl-module

DESCRIPTION="Provides an index for current CPAN distributions"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	dev-perl/CPAN-DistnameInfo
	dev-perl/File-Slurp
	virtual/perl-File-Path
	virtual/perl-File-Temp
	virtual/perl-IO-Zlib
	virtual/perl-IO
	dev-perl/libwww-perl
	virtual/perl-version
	>=virtual/perl-Test-Simple-0.70
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
