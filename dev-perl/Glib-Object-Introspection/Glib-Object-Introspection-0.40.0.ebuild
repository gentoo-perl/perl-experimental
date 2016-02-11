# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
MODULE_AUTHOR=XAOC
MODULE_VERSION=0.040
inherit perl-module

DESCRIPTION='Dynamically create Perl language bindings'
LICENSE=" LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# gmodule -> dev-libs/glib
XS_DEPEND="
	>=dev-libs/gobject-introspection-1.0
	>=dev-libs/libffi-3.0.0
	>=dev-libs/glib-2.0.0
"
# ExtUtils::PkgCOnfig -> extutils-pkgconfig
# Glib -> glib-perl
RDEPEND="
	>=dev-perl/glib-perl-1.320.0
	${XS_DEPEND}
"
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	>=dev-perl/ExtUtils-Depends-0.300.0
	>=dev-perl/extutils-pkgconfig-1.0.0
	virtual/perl-File-Spec
	${RDEPEND}
"
