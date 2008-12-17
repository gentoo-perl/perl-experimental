# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Alien-wxWidgets/Alien-wxWidgets-0.34.ebuild,v 1.3 2008/11/18 14:20:19 tove Exp $

EAPI=1

WX_GTK_VER="2.8"
MODULE_AUTHOR=MBARBON
inherit perl-module wxwidgets

DESCRIPTION="Building, finding and using wxWidgets binaries"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~ia64 ~x86"
IUSE="unicode"

SRC_TEST="do"

RDEPEND="dev-lang/perl
	x11-libs/wxGTK:2.8
	>=virtual/perl-Module-Pluggable-3.1-r1"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

perl-module_src_prep() {
	perlinfo

	if use unicode; then
		need-wxwidgets unicode
	else
		need-wxwidgets gtk2
	fi

	echo no | perl Build.PL --installdirs=vendor \
		--destdir="${D}" \
		--libdoc= || die "perl Build.PL has failed!"
}
