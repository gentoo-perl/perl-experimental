# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="URI related types and coercions for Moose"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Moose-0.500.0
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-Path-Class
	dev-perl/URI
	dev-perl/URI-FromHash
	>=dev-perl/namespace-clean-0.80.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-1.1.10
	)
"
