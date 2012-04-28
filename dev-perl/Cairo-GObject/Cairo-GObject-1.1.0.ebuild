# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=TSCH
MODULE_VERSION=1.001
inherit perl-module

DESCRIPTION="Integrate Cairo into the Glib type system"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	x11-libs/cairo[glib]
	>=dev-perl/glib-perl-1.224.0
	>=dev-perl/Cairo-1.80.0
"
DEPEND="${RDEPEND}
	>=dev-perl/extutils-depends-0.200.0
	virtual/perl-ExtUtils-MakeMaker
	>=dev-perl/extutils-pkgconfig-1.0.0
"

SRC_TEST=do
