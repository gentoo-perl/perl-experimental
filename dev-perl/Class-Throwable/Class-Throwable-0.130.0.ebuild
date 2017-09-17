# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=KMX
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION="A minimal lightweight exception class"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/pod_coverage.t
	t/pod.t
)
RDEPEND="
	>=virtual/perl-Scalar-List-Utils-1.100.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.470.0
	)
"
