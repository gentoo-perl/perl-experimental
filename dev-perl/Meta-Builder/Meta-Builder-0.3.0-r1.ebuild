# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=EXODIST
MODULE_VERSION=0.003
inherit perl-module

DESCRIPTION="Tools for creating Meta objects to track custom metrics"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Fennec-Lite
	virtual/perl-Test-Simple
	dev-perl/Test-Exception
	dev-perl/Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
