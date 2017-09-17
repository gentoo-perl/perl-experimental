# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ASH
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="File based storage model for Catalyst."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/01use.t
	t/02pod.t
)
PERL_RESTRICT="parallel-test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.0
	dev-perl/Catalyst-Component-InstancePerContext
	dev-perl/MRO-Compat
	dev-perl/Moose
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-Path-Class
	dev-perl/Path-Class
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		virtual/perl-Test-Simple
	)
"
