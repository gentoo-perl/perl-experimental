# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ANDYA
MODULE_VERSION=1.00
inherit perl-module

DESCRIPTION="Simple parallel execution "

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	virtual/perl-Test-Simple $(comment Test::More)
	virtual/perl-Storable
	virtual/perl-IO $(comment IO::Handle IO::Select)
	$(comment virtual/perl-Config)
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
