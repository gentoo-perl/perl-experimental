# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=UNOBE
inherit perl-module

DESCRIPTION="Perl interface to Facebook Platform API"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	virtual/perl-version
	dev-perl/Crypt-SSLeay
	dev-perl/JSON-Any
	dev-perl/libwww-perl
	dev-perl/Readonly
"
RDEPEND="
	${DEPEND}
"
SRC_TEST="do"
