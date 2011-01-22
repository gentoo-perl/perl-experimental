# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RKITOVER
inherit perl-module

DESCRIPTION="An extension to MooseX::Traits"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	|| ( >=dev-perl/Moose-1.990 >=dev-perl/Class-MOP-0.84 )
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
SRC_TEST=do
