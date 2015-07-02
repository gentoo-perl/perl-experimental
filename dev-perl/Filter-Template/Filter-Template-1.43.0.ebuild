# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
MODULE_AUTHOR=RCAPUTO
MODULE_VERSION=1.043

inherit perl-module

DESCRIPTION="Source filter for code templates or macros"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"

PERL_RM_FILES=(
	t/release-pod-coverage.t
	t/release-pod-syntax.t
)
# Filter::Util::Call -> Filter
# Test::More -> Test-Simple
RDEPEND="
	virtual/perl-Carp
	>=dev-perl/Filter-1.490.0
	virtual/perl-constant
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		>=virtual/perl-Test-Simple-0.980.0
		>=virtual/perl-Scalar-Util-1.290.0
	)
"
