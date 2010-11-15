# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=SARTAK
inherit perl-module

DESCRIPTION="a working (require q{Class::Name}) and more "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-Scalar-List-Utils
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Fatal
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
