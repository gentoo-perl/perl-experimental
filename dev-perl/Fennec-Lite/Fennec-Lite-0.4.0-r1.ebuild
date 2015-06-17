# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=EXODIST
MODULE_VERSION=0.004
inherit perl-module

DESCRIPTION="Minimalist Fennec, the commonly used bits."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	>=dev-lang/perl-5.6.0
	virtual/perl-Test-Simple $(comment Test::More)
	$(comment Test::Builder)
	virtual/perl-Scalar-List-Utils $(comment List::Util)
"
DEPEND="
	dev-perl/Module-Build
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
