# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION='User role-based authorization action class'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/author/pod-coverage.t
	t/pod.t
)
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.900.130
	dev-perl/Moose
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.360.0
	test? (
		virtual/perl-Test-Simple
	)
"
