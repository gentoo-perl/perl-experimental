# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.78
inherit perl-module

DESCRIPTION='CPANPLUS plugin to install packages that use Build.PL'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Test::More -> Test-Simple
RDEPEND="
	>=dev-perl/CPANPLUS-0.840.0
	>=virtual/perl-ExtUtils-Install-1.420.0
	virtual/perl-File-Spec
	>=virtual/perl-IPC-Cmd-0.420.0
	virtual/perl-Locale-Maketext-Simple
	>=dev-perl/Module-Build-0.320.0
	>=virtual/perl-Module-Load-0.160.0
	>=virtual/perl-Module-Load-Conditional-0.300.0
	>=dev-perl/Module-Pluggable-3.800.0
	>=virtual/perl-Params-Check-0.260.0
	>=virtual/perl-Test-Harness-3.160.0
	virtual/perl-if
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	test? (
		>=virtual/perl-Test-Simple-0.470.0
	)
"
PERL_RM_FILES=(
	t/99_pod.t
	t/99_pod_coverage.t
)
