# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ADAMK
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="Convenience object for manipulating module dependencies"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/97_meta.t
	t/98_pod.t
	t/99_pmv.t
)
RDEPEND="
	virtual/perl-Carp
	>=dev-perl/Params-Util-0.100.0
	>=virtual/perl-version-0.740.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.420.0
	)
"
