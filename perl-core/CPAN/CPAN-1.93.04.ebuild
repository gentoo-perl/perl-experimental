# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit versionator
MODULE_AUTHOR="ANDK"
MY_P=${PN}-$(delete_version_separator 2 )
inherit perl-module

DESCRIPTION="query, download and build perl modules from CPAN sites"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-lang/perl"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${MY_P}

PATCHES=( "${FILESDIR}/${PV}-Makefile.patch" )
