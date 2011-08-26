# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="User role-based authorization action class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true;}
RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Moose
	dev-perl/Catalyst-Controller-ActionRole
	dev-perl/namespace-autoclean
"
DEPEND="
	${DEPEND}
	test? (
		virtual/perl-Test-Simple $(comment Test::More)
	)
"
SRC_TEST=do
