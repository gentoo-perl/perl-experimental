# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DANIELTWC
inherit perl-module

DESCRIPTION="EVDB model class for Catalyst"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.500
	dev-perl/EVDB-API
	virtual/perl-Test-Simple
"
DEPEND="${RDEPEND}"
