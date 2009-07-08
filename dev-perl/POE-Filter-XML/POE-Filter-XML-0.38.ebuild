# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NPEREZ
inherit perl-module

DESCRIPTION="A POE Filter for parsing XML"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND=">=dev-lang/perl-5.10.0
	>=dev-perl/POE-1.003
	>=dev-perl/XML-SAX-0.16
	>=dev-perl/XML-LibXML-1.69"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}"
