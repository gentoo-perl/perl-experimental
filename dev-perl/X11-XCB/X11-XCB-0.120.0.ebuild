# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=MSTPLBG
MODULE_VERSION=0.12
inherit perl-module virtualx

DESCRIPTION="Perl bindings for libxcb"

SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test" # https://rt.cpan.org/Ticket/Display.html?id=104398
IUSE="test"

# xcb-xinerama -> libxcb
# xcb-icccm    -> xcb-util
RDEPEND_XS="
	>=x11-libs/libxcb-1.2
	x11-libs/xcb-util
"
# ExtUtils::PkgConfig -> extutils-pkgconfig
RDEPEND="
	dev-perl/Mouse
	dev-perl/MouseX-NativeTraits
	dev-perl/Try-Tiny
	virtual/perl-XSLoader
"
DEPEND="
	${RDEPEND}
	dev-perl/Data-Dump
	virtual/perl-Devel-PPPort
	dev-perl/ExtUtils-Depends
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-ExtUtils-ParseXS
	dev-perl/XML-Descent
	dev-perl/XML-Simple
	dev-perl/XS-Object-Magic
	dev-perl/extutils-pkgconfig
	test? (
		dev-perl/Test-Deep
		dev-perl/Test-Exception
		virtual/perl-Test-Simple
	)
"
MAKEOPTS+=" -j1"
src_test() {
	VIRTUALX_COMMAND="perl-module_src_test" virtualmake
}
