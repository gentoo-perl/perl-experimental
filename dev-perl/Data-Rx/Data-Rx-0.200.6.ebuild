# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.200006
inherit perl-module

DESCRIPTION='perl implementation of Rx schema system'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# List::Util -> Scalar-List-Utils
# Scalar::Util -> Scalar-List-Utils
# Test::More -> Test-Simple (Yes, Runtime)
# Test::Deep::NoTest -> Test-Deep
RDEPEND="
	virtual/perl-Carp
	dev-perl/File-Find-Rule
	>=dev-perl/JSON-2.0.0
	virtual/perl-Scalar-List-Utils
	dev-perl/Number-Tolerant
	>=virtual/perl-Test-Simple-0.960.0
	virtual/perl-autodie
	virtual/perl-parent
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		dev-perl/Test-Deep
		dev-perl/Try-Tiny
	)
"
