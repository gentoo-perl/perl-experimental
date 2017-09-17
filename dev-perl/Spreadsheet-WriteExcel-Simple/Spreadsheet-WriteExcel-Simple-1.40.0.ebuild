# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=TMTM
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="A simple single-sheet Excel document"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
RDEPEND="
	>=dev-perl/Spreadsheet-WriteExcel-0.310.0
	>=dev-perl/IO-stringy-1.126.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.40.0
	)
"
