# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=RWSTAUNER
MODULE_VERSION=0.372
inherit perl-module

DESCRIPTION="Aggregate *.t tests to make them run faster"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# FindBin -> perl > 5.9
RDEPEND="
	>=virtual/perl-Test-Harness-3.90.0
	dev-perl/Test-NoWarnings
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.420.0
	test? (
		>=dev-perl/Data-Dump-Streamer-1.110.0
		>=dev-perl/Perl-Tidy-20060614.0.0
		>=virtual/perl-Test-Simple-0.940.0
	)
"
