# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MODULE_VERSION="6.57_06"
MODULE_AUTHOR=CHORNY
inherit perl-module eutils

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

PATCHES=(
	"${FILESDIR}/${PV}/0001-Add-patch-from-gentoo-as-stolen-from-debian.patch"
	"${FILESDIR}/${PV}/0002-Add-RUNPATH-patch-from-gentoo.patch"
)
src_prepare (){
	edos2unix "${S}/lib/ExtUtils/MM_Unix.pm"
	edos2unix "${S}/lib/ExtUtils/MM_Any.pm"

	perl-module_src_prepare
}
SRC_TEST=do
