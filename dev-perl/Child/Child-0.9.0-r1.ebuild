# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=EXODIST
MODULE_VERSION=0.009
inherit perl-module

DESCRIPTION="Object oriented simple interface to fork()"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }

COMMON_DEPEND="
	$(comment CORE POSIX)
	$(comment CORE Exporter)
	>=dev-lang/perl-5.6.0
"
DEPEND="
	${COMMON_DEPEND}
	$(comment BUILD REQUIRES)
	>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)
	$(comment CONFIG REQUIRES)
	>=dev-perl/Module-Build-0.36.0 $(comment 0.360.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
