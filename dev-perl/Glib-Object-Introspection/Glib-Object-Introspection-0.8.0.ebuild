# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=XAOC
MODULE_VERSION=0.008
inherit perl-module

DESCRIPTION="Dynamically create Perl language bindings"

LICENSE="|| ( LGPL-2.1 LGPL-3 )" # LGPL-2.1 or later
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-libs/gobject-introspection-1.0
	>=dev-perl/glib-perl-1.240.0
"
DEPEND="${RDEPEND}
	>=dev-perl/extutils-depends-0.300.0
	virtual/perl-ExtUtils-MakeMaker
	>=dev-perl/glib-perl-1.240.0
	>=dev-perl/extutils-pkgconfig-1.0.0
"

SRC_TEST=do
