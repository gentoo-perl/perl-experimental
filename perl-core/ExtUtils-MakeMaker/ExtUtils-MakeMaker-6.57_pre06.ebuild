# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/perl-core/ExtUtils-MakeMaker/ExtUtils-MakeMaker-6.56-r1.ebuild,v 1.6 2010/09/13 14:41:47 josejx Exp $

EAPI=3
# Bash substitution that maps  0.123_preXY to 0.123_XY, mapping cpan-pre-release
# to gentoo pre-release
MY_P="${PN}-${PV//_pre/_}";
S="${WORKDIR}/gentoo-perl-ExtUtils-MakeMaker-d3529b6";
SRC_URI="http://nodeload.github.com/gentoo-perl/ExtUtils-MakeMaker/tarball/v6.57_06_gentoo_r0 -> ${MY_P}.tar.gz"

MODULE_AUTHOR=CHORNY
inherit perl-module

DESCRIPTION="Create a module Makefile"
HOMEPAGE="http://makemaker.org ${HOMEPAGE}"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=">=virtual/perl-ExtUtils-Manifest-1.56
	>=virtual/perl-ExtUtils-Command-1.16
	>=virtual/perl-ExtUtils-Install-1.52"
RDEPEND="${DEPEND}
	!!<dev-lang/perl-5.8.8-r7"

SRC_TEST=do
