# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ADAMK
MODULE_VERSION=1.05
inherit perl-module

DESCRIPTION="An integrated API for inspecting Perl distributions"

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
	dev-perl/File-Find-Rule
	dev-perl/File-Find-Rule-Perl
	>=dev-perl/File-Find-Rule-VCS-1.20.0
	>=virtual/perl-File-Spec-0.800.0
	>=dev-perl/Module-Extract-0.10.0
	dev-perl/Module-Manifest
	>=dev-perl/Module-Math-Depends-0.20.0
	>=dev-perl/PPI-1.118.0
	>=dev-perl/Params-Util-0.170.0
	>=dev-perl/YAML-Tiny-1.0.0
	>=virtual/perl-version-0.740.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.470.0
	)
"
