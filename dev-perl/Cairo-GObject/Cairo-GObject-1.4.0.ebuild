# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=XAOC
MODULE_VERSION=1.004
inherit perl-module

DESCRIPTION="Integrate Cairo into the Glib type system"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Glib -> glib-perl
RDEPEND="
	>=dev-perl/Cairo-1.80.0
	x11-libs/cairo[glib]
	>=dev-perl/glib-perl-1.224.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	>=dev-perl/ExtUtils-Depends-0.200.0
	>=dev-perl/extutils-pkgconfig-1.0.0
"
