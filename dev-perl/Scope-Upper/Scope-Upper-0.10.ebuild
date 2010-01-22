# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=VPIT
inherit perl-module

DESCRIPTION="Act on upper scopes."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	virtual/perl-XSLoader
"
DEPEND="${COMMON_DEPEND}
	virtual/perl-Test-Simple
	virtual/perl-ExtUtils-MakeMaker
"
RDEPEND="${COMMON_DEPEND}"
SRC_TEST=do
