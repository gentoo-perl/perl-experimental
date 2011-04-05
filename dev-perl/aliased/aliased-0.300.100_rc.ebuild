# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=OVID
MODULE_VERSION=0.30_01
inherit perl-module

DESCRIPTION="Use shorter versions of class names"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS=""

IUSE=""
RDEPEND=""
DEPEND="${RDEPEND}
	virtual/perl-Test-Simple
	virtual/perl-Module-Build"
SRC_TEST="do"
