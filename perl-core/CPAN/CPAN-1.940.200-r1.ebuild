# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR="ANDK"
MODULE_VERSION="1.9402"
inherit perl-module

DESCRIPTION="query, download and build perl modules from CPAN sites"

SLOT="0"
KEYWORDS=""
IUSE="readline"

PATCHES=(
	"${FILESDIR}/1.94-Makefile.patch"
	"${FILESDIR}/1.94-SignatureTest.patch"
)
RDEPEND="
	>=dev-lang/perl-5.8.8-r8
	readline? (
		|| (
			dev-perl/Term-ReadLine-Perl
			dev-perl/Term-ReadLine-Gnu
		)
	)
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
