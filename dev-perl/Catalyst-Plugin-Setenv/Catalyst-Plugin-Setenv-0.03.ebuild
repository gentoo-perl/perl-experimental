# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MRAMBERG
inherit perl-module

DESCRIPTION="Allows you to set up the environment from Catalyst's config file"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.700
"
DEPEND="
	${RDEPEND}
	virtual/perl-Module-Build
"
SRC_TEST="do"
