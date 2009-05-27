# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BARBIE
inherit perl-module

DESCRIPTION="A test module to validate a CPAN META.yml file.
"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Parse-CPAN-Meta-0.02
	virtual/perl-Test-Simple
"
DEPEND="
	${COMMON_DEPEND}
	test? (
			>=dev-perl/Test-Pod-1.00
			>=dev-perl/Test-Pod-Coverage-0.08
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
