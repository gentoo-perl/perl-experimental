# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=VPIT
MODULE_VERSION=0.14
inherit perl-module

DESCRIPTION="Act on upper scopes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="virtual/perl-XSLoader"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-Test-Simple
"

SRC_TEST=do
