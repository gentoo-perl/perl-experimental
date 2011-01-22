# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=FLORA
MODULE_VERSION="0.36"
inherit perl-module

DESCRIPTION="Method declarations with type constraints and no source filter"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/aliased
	>=dev-perl/B-Hooks-EndOfScope-0.07
	dev-perl/Context-Preserve
	>=dev-perl/Parse-Method-Signatures-1.003011
	>=dev-perl/Devel-Declare-0.005011
	>=dev-perl/Moose-0.89
	>=dev-perl/MooseX-LazyRequire-0.60
	dev-perl/MooseX-Meta-TypeConstraint-ForceCoercion
	>=dev-perl/MooseX-Types-0.19
	>=dev-perl/MooseX-Types-Structured-0.20
	dev-perl/namespace-autoclean
	dev-perl/Sub-Name
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	test? (
		>=virtual/perl-Test-Simple-0.88
		dev-perl/Test-Exception
	)
"
SRC_TEST="do"
