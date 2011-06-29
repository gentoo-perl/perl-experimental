# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ROBERTSD
MODULE_VERSION=0.36
inherit perl-module

DESCRIPTION="Generate An HTML Tag Cloud"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND=""
DEPEND="
	${RDEPEND}
	virtual/perl-Test-Simple
	virtual/perl-Module-Build"
SRC_TEST=do
