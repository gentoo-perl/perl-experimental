# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=HKCLARK
MODULE_VERSION=5.9002
inherit perl-module

DESCRIPTION="The Catalyst developer's manual"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true;}
RDEPEND=""
DEPEND="
	${RDEPEND}
	test? (
		$(comment Test::More)
		virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
