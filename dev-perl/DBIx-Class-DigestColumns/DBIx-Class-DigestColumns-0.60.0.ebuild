# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=GRODITI
MODULE_VERSION="0.06000"
inherit perl-module

DESCRIPTION="Automatic digest columns."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/DBIx-Class-0.06002
	virtual/perl-Digest-SHA
"
DEPEND="
	${RDEPEND}
	virtual/perl-Module-Build
"
SRC_TEST="do"
