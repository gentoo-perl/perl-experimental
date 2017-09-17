# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MARKSTOS
MODULE_VERSION=4.50
inherit perl-module

DESCRIPTION="Framework for building reusable web-applications"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="minimal test"
RDEPEND="
	dev-perl/CGI
	virtual/perl-Carp
	dev-perl/HTML-Template
	dev-perl/Class-ISA
	!minimal? (
		dev-perl/CGI-PSGI
	)
"
DEPEND="
	${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.470.0
	)
	>=dev-perl/Module-Build-0.380.0
"
