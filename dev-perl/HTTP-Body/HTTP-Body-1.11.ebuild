# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=GETTY
inherit perl-module

DESCRIPTION="HTTP Body Parser"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PATCHES=(
	"${FILESDIR}/multipartpatch.patch"
)
RDEPEND="
	>=virtual/perl-File-Temp-0.14
	dev-perl/libwww-perl
	>=virtual/perl-IO-1.14
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-Deep
		>=virtual/perl-Test-Simple-0.86
	)
"

SRC_TEST=do
