# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=CREAMYG
MODULE_VERSION="0.952"
inherit perl-module

DESCRIPTION="Perl interface to Snowball stemmers."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND=""
DEPEND="
	dev-perl/Module-Build
	virtual/perl-ExtUtils-CBuilder
	virtual/perl-ExtUtils-ParseXS
	test? (
		virtual/perl-Test-Simple
	)
"
