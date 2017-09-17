# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=GAUDEON
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION="Helper for Download Views"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# Catalyst::View -> Catalyst-Runtime
RDEPEND=""
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		dev-perl/Catalyst-Runtime
		dev-perl/Test-WWW-Mechanize-Catalyst
		dev-perl/Text-CSV
		dev-perl/XML-Simple
		>=virtual/perl-Test-Simple-1.1.10
	)
"
