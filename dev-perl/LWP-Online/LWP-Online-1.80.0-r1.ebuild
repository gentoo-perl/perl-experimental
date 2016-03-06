# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ADAMK
MODULE_VERSION=1.08
inherit perl-module

DESCRIPTION="Does your process have access to the web"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/libwww-perl-5.805 $(comment LWP::Simple 5.805.0)
	>=dev-perl/URI-1.350.0
	>=dev-lang/perl-5.5.0
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.42 $(comment 6.420.0)
	test? (
		>=virtual/perl-Test-Simple-0.42 $(comment Test::More 0.420.0)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
