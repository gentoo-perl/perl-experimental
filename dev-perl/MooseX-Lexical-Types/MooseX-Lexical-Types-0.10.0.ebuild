# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="automatically validate lexicals against Moose type constraints"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/namespace-autoclean
	>=dev-perl/Moose-1.990.0
	virtual/perl-Carp
	dev-perl/Lexical-Types
	dev-perl/Variable-Magic
	>=dev-perl/MooseX-Types-0.90.0
"
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/Test-Exception
		virtual/perl-Test-Simple
	)
"
