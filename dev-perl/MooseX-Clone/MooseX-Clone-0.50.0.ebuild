# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION="Fine grained cloning support for Moose objects."
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPEND="
	>=dev-perl/Data-Visitor-0.240.0
	dev-perl/Hash-Util-FieldHash-Compat
	>=dev-perl/Moose-0.740.0
	>=dev-perl/namespace-clean-0.80.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Test-use-ok
	)
"
