# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MSCHWERN
MODULE_VERSION=20100403
inherit perl-module

DESCRIPTION="Versions of Perl's time functions which work beyond 2038"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.360.0
	>=virtual/perl-ExtUtils-CBuilder-0.240.0
	dev-perl/JSON
	test? (
		>=dev-perl/Test-Warn-0.110.0
		>=dev-perl/Test-Exception-0.270.0
		>=virtual/perl-Test-Simple-0.820.0
	)
"
