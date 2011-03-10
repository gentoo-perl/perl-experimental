# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=FLORA
MODULE_VERSION="1.12"
inherit perl-module

DESCRIPTION="Perl lint"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-Module-Pluggable
"
DEPEND="
	${COMMON_DEPEND}
	test? ( virtual/perl-Test-Simple )
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
