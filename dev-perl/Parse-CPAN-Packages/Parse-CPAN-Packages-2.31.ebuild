# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=LBROCARD
inherit perl-module

DESCRIPTION="Parse 02packages.details.txt.gz"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="virtual/perl-Compress-Zlib
	dev-perl/CPAN-DistnameInfo
	dev-perl/Moose
	virtual/perl-version"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
