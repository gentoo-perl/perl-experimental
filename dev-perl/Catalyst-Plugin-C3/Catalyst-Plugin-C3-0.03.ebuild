# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BLBLACK
inherit perl-module

DESCRIPTION="Catalyst Plugin to subvert NEXT to use Class::C3"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-perl/Catalyst-Runtime-5.700.600
	>=dev-perl/Class-C3-0.19"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.47 )"
