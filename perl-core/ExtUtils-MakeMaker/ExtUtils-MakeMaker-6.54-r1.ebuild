# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MSCHWERN
inherit perl-module

DESCRIPTION="Create a module Makefile"
HOMEPAGE="http://makemaker.org"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

PATCHES=(
	"${FILESDIR}/RUNPATH-${PV}.patch"
)

DEPEND=">=virtual/perl-ExtUtils-Manifest-1.56
	>=virtual/perl-ExtUtils-Command-1.16
	>=virtual/perl-ExtUtils-Install-1.52"
RDEPEND="${RDEPEND}
	!!<dev-lang/perl-5.8.8-r7"

SRC_TEST=do
