# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR="ANDK"
MODULE_VERSION="1.9402"
inherit perl-module

DESCRIPTION="query, download and build perl modules from CPAN sites"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/perl-5.8.8-r8"

PATCHES=( "${FILESDIR}/1.94-Makefile.patch" )
