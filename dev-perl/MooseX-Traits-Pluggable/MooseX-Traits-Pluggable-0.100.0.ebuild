# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=RKITOVER
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="An extension to MooseX::Traits"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Moose-1.990.0
	dev-perl/Moose
	virtual/perl-Scalar-List-Utils
	dev-perl/namespace-autoclean
	dev-perl/List-MoreUtils
"
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/Test-Exception
		virtual/perl-Test-Simple
	)
"
