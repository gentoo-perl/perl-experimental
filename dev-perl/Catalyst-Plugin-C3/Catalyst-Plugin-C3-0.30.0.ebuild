# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=BLBLACK
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="Catalyst Plugin to subvert NEXT to use Class::C3"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND=">=dev-perl/Catalyst-Runtime-5.700.600
	>=dev-perl/Class-C3-0.19"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.47 )"
