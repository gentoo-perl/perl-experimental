# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=LBROCARD
MODULE_VERSION=0.31
inherit perl-module

DESCRIPTION="Provide a progress meter if run interactively"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/pod.t
)
RDEPEND="
	dev-perl/Term-ProgressBar
	dev-perl/IO-Interactive
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Test-MockObject
		virtual/perl-Test-Simple
	)
"
