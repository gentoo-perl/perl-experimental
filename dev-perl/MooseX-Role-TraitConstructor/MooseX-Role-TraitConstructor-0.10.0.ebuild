# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="A wrapper for new that can accept a traits parameter."
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPEND="
	>=dev-perl/Moose-0.400.0
	virtual/perl-Scalar-List-Utils
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
	|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
		dev-perl/Test-Exception
	)
"
