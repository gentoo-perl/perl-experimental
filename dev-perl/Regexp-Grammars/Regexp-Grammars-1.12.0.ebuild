# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=DCONWAY
MODULE_VERSION="1.012"
inherit perl-module

DESCRIPTION="Add grammatical parsing features to Perl 5.10 regexes"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-lang/perl-5.10.0
	virtual/perl-Test-Simple
	virtual/perl-version
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
