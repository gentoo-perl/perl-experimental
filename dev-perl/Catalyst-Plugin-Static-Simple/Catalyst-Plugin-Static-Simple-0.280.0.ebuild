# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="Make serving static pages painless."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.80
	>=dev-perl/MIME-Types-1.25
	dev-perl/Moose
	dev-perl/MooseX-Types
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
