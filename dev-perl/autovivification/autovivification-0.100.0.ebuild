# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=VPIT
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="Lexically disable autovivification."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment XSLoader)
	virtual/perl-XSLoader
"
DEPEND="
	${COMMON_DEPEND}
	$(comment configure)
	$(comment ExtUtils::MakeMaker)
	virtual/perl-ExtUtils-MakeMaker

	$(comment build)
	$(comment ExtUtils::MakeMaker)
	virtual/perl-ExtUtils-MakeMaker

	$(comment Test::More)
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
