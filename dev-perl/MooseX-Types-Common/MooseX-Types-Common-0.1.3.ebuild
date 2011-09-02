# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ARCANEZ
MODULE_VERSION=0.001003
inherit perl-module

DESCRIPTION="A set of commonly-used type constraints that do not ship with Moose by default"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true;}
COMMON_DEPEND="
	$(comment Moose 0.39)
	>=dev-perl/Moose-0.39 $(comment 0.390.0)

	$(comment MooseX::Types 0.04)
	>=dev-perl/MooseX-Types-0.40.0
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		$(comment Test::More 0.62)
		>=virtual/perl-Test-Simple-0.62

		$(comment Test::Exception)
		dev-perl/Test-Exception
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
