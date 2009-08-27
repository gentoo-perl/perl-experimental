# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=ANDREMAR

inherit perl-module

DESCRIPTION="Catalyst plugin for Facebook Platform API integration"

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/WWW-Facebook-API
"
DEPEND="
	${DEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
SRC_TEST=do
