# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION="1.12"
inherit perl-module

DESCRIPTION="Syntactic try/catch sugar for use with Exception::Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
COMMON_DEPEND="
	dev-perl/Exception-Class
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.47
	virtual/perl-Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
