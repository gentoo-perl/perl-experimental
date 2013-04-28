# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="A Data::Visitor for creating Moose objects from blessed placeholders"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	|| ( >=dev-perl/Moose-1.990.0 >=dev-perl/Class-MOP-0.930.0 )
	>=dev-perl/Data-Visitor-0.210.0
	>=dev-perl/Moose-1.50.0
	dev-perl/namespace-clean
"
DEPEND="${COMMON_DEPEND}
	test? ( dev-perl/Test-use-ok )
"
RDEPEND="${COMMON_DEPEND}"

SRC_TEST="do"
