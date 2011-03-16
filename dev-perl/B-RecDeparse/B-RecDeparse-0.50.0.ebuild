# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=VPIT
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="Deparse recursively into subroutines."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

comment() { echo ''; }

COMMON_DEPEND="
	$(comment B::Deparse)
	$(comment Config)
	$(comment Carp)
	$(comment base)
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
