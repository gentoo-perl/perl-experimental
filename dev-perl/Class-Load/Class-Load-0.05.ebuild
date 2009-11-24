# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=SARTAK
inherit perl-module

DESCRIPTION="a working (require q{Class::Name}) and more "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Exception
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
