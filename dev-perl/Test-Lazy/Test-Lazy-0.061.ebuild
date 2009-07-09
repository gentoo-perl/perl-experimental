# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RKRIMEN
inherit perl-module

DESCRIPTION="A quick and easy way to compose and run tests with useful output"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-perl/Test-Deep
	dev-perl/Class-Accessor
	virtual/perl-Scalar-List-Utils"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
