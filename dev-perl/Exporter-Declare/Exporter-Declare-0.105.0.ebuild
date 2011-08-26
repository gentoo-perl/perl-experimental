# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=EXODIST
MODULE_VERSION=0.105
inherit perl-module

DESCRIPTION="Exporting done right"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	>=dev-lang/perl-5.8.0
	$(comment virtual/perl-Carp)
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	dev-perl/aliased
	>=dev-perl/Meta-Builder-0.3.0
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
