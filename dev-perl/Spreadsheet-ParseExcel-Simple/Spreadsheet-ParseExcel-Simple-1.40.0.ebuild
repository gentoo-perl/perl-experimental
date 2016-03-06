# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=TMTM
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="A simple interface to Excel data "
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/pod.t
	t/pod-coverage.t
)
RDEPEND="
	>=dev-perl/Spreadsheet-ParseExcel-0.180.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.10.0
	)
"
