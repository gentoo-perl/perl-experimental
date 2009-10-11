# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

#MODULE_AUTHOR=FLORA
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Code atttribute introspection"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/namespace-clean-0.10
	dev-perl/namespace-autoclean
	dev-perl/Carp-Clan
	>=dev-perl/MooseX-Types-0.20
	dev-perl/MRO-Compat
	>=dev-perl/Moose-0.79
"
DEPEND="${RDEPEND}
	test? (
			dev-perl/Test-Exception
			>=virtual/perl-Test-Simple-0.88
	)
"
SRC_TEST=do
