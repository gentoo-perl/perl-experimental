# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit versionator
MODULE_AUTHOR="ANDK"
MY_P=${PN}-$(delete_version_separator 2 )
S=${WORKDIR}/${MY_P}
inherit perl-module

DESCRIPTION="query, download and build perl modules from CPAN sites"

SLOT="0"
KEYWORDS=""
IUSE="build readline"

PATCHES=( "${FILESDIR}/1.94-Makefile.patch"
		  "${FILESDIR}/1.94-SignatureTest.patch"
)
RDEPEND="
!build? (
	readline? (
		|| (
			dev-perl/Term-ReadLine-Perl
			dev-perl/Term-ReadLine-GNU
		)
	)
)"
DEPEND="${RDEPEND}"
SRC_TEST="do"
