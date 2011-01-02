# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=VPIT
inherit perl-module

DESCRIPTION="Act on upper scopes."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	virtual/perl-XSLoader
"
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-Test-Simple
"

RDEPEND="${COMMON_DEPEND}"
SRC_TEST=do
