# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=RKRIMEN
MODULE_VERSION="0.061"
inherit perl-module

DESCRIPTION="A quick and easy way to compose and run tests with useful output"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="dev-perl/Test-Deep
	dev-perl/Class-Accessor
	virtual/perl-Scalar-List-Utils"
DEPEND="dev-perl/Module-Build
	${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
