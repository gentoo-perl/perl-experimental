# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.16"
inherit perl-module

DESCRIPTION="Automatic Trait Loading and Resolution for Catalyst Components"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.50
	>=dev-perl/MooseX-Traits-Pluggable-0.08
	dev-perl/namespace-autoclean
	dev-perl/List-MoreUtils
	virtual/perl-Scalar-List-Utils
"
DEPEND="
	${RDEPEND}
	test? (
		>=virtual/perl-Module-Pluggable-3.9
		>=virtual/perl-Test-Simple-0.88
	)
"
SRC_TEST=do
