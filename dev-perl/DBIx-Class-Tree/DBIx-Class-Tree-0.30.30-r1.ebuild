# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=ABRAXXA
MODULE_VERSION="0.03003"
inherit perl-module

DESCRIPTION="Manipulate and anaylze tree structured data."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/01_pod.t
)
PERL_RESTRICT="parallel-test"
RDEPEND="
	>=dev-perl/DBIx-Class-0.81.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		dev-perl/Test-Exception
	)
"
