# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=BRUNOV
MODULE_VERSION=0.05-TRIAL
MODULE_DZIL_TRIAL=1
inherit perl-module

DESCRIPTION="Memory only cache of live references"

SLOT="0"
KEYWORDS=""
IUSE="test"

PERL_RM_FILES=(
	t/release-pod-syntax.t
	t/release-pod-coverage.t
	t/release-no-tabs.t
	t/release-eol.t
)
# List::Util -> Scalar-List-Utils
# Scalar::Util -> Scalar-List-Utils
# Moose::Role -> Moose
# Test::Moose -> Moose
RDEPEND="
	virtual/perl-Carp
	dev-perl/Hash-Util-FieldHash-Compat
	dev-perl/Moose
	dev-perl/MooseX-Role-Parameterized
	dev-perl/namespace-autoclean
	virtual/perl-Scalar-List-Utils
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.310.0
	test? (
		virtual/perl-Test-Simple
	)
"
