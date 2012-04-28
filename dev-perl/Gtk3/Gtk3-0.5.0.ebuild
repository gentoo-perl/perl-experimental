# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=TSCH
MODULE_VERSION=0.005
inherit perl-module
inherit virtualx

DESCRIPTION="Perl interface to the 3.x series of the gtk+ toolkit"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	x11-libs/gtk+:3
	>=dev-perl/Cairo-GObject-1.0.0
	>=dev-perl/Glib-Object-Introspection-0.2.0
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
"

SRC_TEST=do

src_test() {
	Xemake -j1 test || die
}

