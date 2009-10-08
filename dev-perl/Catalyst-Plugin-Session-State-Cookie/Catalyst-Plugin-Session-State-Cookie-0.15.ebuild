# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Catalyst plugin: maintain session IDs using cookies"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.80005
	>=dev-perl/Catalyst-Plugin-Session-0.19
	dev-perl/MRO-Compat
	dev-perl/Moose
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Moose
		virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
