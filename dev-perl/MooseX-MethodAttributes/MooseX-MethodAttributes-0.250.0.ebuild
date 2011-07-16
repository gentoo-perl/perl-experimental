# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

#MODULE_AUTHOR=FLORA
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.25
inherit perl-module

DESCRIPTION="Code atttribute introspection"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Moose-0.98 $(comment 0.980.0)
	>=dev-perl/MooseX-Types-0.210.0 $(comment MooseX::Types::Moose)
	>=dev-perl/namespace-clean-0.100.0
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
	test? (
		dev-perl/Test-Exception
		dev-perl/namespace-autoclean
		>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
	)
"
SRC_TEST=do
