# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.00902"
inherit perl-module

DESCRIPTION="Emulate Class::Accessor::Fast behavior using Moose attributes"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Moose-0.84
	dev-perl/namespace-clean
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-Exception
		virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
