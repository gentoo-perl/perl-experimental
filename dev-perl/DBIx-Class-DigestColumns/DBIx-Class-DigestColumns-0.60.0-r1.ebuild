# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=GRODITI
MODULE_VERSION="0.06000"
inherit perl-module

DESCRIPTION="Automatic digest columns."
PERL_RESTRICT=parallel-test
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/DBIx-Class-0.60.20
	virtual/perl-Digest-SHA
"
DEPEND="
	${RDEPEND}
	dev-perl/Module-Build
"
