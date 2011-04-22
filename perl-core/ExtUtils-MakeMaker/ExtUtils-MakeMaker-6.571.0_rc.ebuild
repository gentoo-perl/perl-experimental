# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MODULE_VERSION="6.57_10"
MODULE_AUTHOR=MSCHWERN
inherit perl-module eutils

DESCRIPTION="Create a module Makefile"
HOMEPAGE="http://makemaker.org ${HOMEPAGE}"
SLOT="0"
KEYWORDS=""
IUSE=""
comment() { echo ''; }

DEPEND="
	>=virtual/perl-CPAN-Meta-2.110.930
	>=virtual/perl-ExtUtils-Command-1.16
	>=virtual/perl-ExtUtils-Install-1.52
	>=virtual/perl-ExtUtils-Manifest-1.58
	>=virtual/perl-Parse-CPAN-Meta-1.440.100
	>=virtual/perl-File-Spec-0.8 $(comment 0.800.0)
"
RDEPEND="${DEPEND}
	!!<dev-lang/perl-5.8.8-r7"

PATCHES=(
	"${FILESDIR}/${PV}/0001-Add-patch-from-gentoo-as-stolen-from-debian.patch"
	"${FILESDIR}/${PV}/0002-Add-RUNPATH-patch-from-gentoo.patch"
)
SRC_TEST=do

src_prepare (){
	edos2unix "${S}/lib/ExtUtils/MM_Unix.pm"
	edos2unix "${S}/lib/ExtUtils/MM_Any.pm"

	perl-module_src_prepare
}

src_install() {
	perl-module_src_install

	# remove all the bundled distributions
	pushd "${D}" >/dev/null
	find ".${VENDOR_LIB}" -mindepth 1 -maxdepth 1 -not -name "ExtUtils" -exec rm -rf {} \+
	popd >/dev/null
}
