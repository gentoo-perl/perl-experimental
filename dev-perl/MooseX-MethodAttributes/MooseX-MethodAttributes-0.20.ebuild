# Copyright 1999-2010 Gentoo Foundation
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
	>=dev-perl/Moose-0.97
	>=dev-perl/namespace-clean-0.10
	dev-perl/namespace-autoclean
	>=dev-perl/MooseX-Types-0.20
"
DEPEND="${RDEPEND}
	test? (
			dev-perl/Test-Exception
			>=virtual/perl-Test-Simple-0.88
	)
"
SRC_TEST=do
