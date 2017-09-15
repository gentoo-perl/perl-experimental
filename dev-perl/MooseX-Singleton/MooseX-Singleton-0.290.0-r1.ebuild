# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=KAARE
MODULE_VERSION=0.29
inherit perl-module

DESCRIPTION='turn your Moose class into a singleton'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/release-pod-syntax.t
	t/release-pod-spell.t
	t/release-pod-coverage.t
	t/release-no-tabs.t
	t/release-eol.t
)
# Scalar::Util -> Scalar-List-Utils
# Test::More -> Test-Simple
RDEPEND="
	>=dev-perl/Moose-1.100.0
	virtual/perl-Scalar-List-Utils
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		>=virtual/perl-ExtUtils-MakeMaker-6.420.0
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/Test-Requires
	)
"
