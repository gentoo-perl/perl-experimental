# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=TIMB
MODULE_VERSION="0.31"
inherit perl-module

DESCRIPTION="Cache the output of entire pages"

IUSE="test"

SLOT="0"

KEYWORDS="~amd64 ~x86"
PERL_RM_FILES=(
	t/02pod.t			# Author tests
	t/03podcoverage.t
	t/04critic.t
)
PERL_RESTRICT="parallel-test"
RDEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/MRO-Compat-0.100.0
	dev-perl/Digest-SHA1
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		virtual/perl-Test-Simple
		>=dev-perl/Catalyst-Plugin-Cache-0.100.0
		>=dev-perl/Cache-Cache-1.40.0
		>=virtual/perl-File-Path-2.70.0
	)
"
