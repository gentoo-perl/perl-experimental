# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BARBIE
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION="A test module to validate a CPAN META.yml file.
"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=virtual/perl-Parse-CPAN-Meta-0.02
	>=virtual/perl-Test-Simple-0.70
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
