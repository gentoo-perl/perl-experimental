# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=1.706
inherit perl-module

DESCRIPTION="tolerance ranges for inexact numbers"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Math::BigFloat -> Math-BigInt
# Scalar::Util -> Scalar-List-Utils
# Sub::Exporter::Util -> Sub-Exporter
# Test::Builder -> Test-Simple ( Yes, Runtime, this dist has a test module )
# Test::Tester -> Test-Simple
RDEPEND="
	virtual/perl-Carp
	virtual/perl-Math-BigInt
	virtual/perl-Math-BigRat
	virtual/perl-Scalar-List-Utils
	>=dev-perl/Sub-Exporter-0.950.0
	virtual/perl-Test-Simple
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Spec
		>=virtual/perl-Test-Simple-0.960.0
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-Tester )
		virtual/perl-if
	)
"
