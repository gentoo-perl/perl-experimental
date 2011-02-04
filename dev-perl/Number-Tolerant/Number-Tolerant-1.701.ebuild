# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=RJBS
inherit perl-module perl-declaredeps

DESCRIPTION="tolerance ranges for inexact numbers"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

bdepend-virtual Test-Simple 0.96 # Test-More
bdepend Test-Tester;

cdepend-virtual ExtUtils-MakeMaker 6.56;

# depend-virtual Carp; # CORE
depend-virtual Math-BigInt # Math::BigFloat
RDEPEND+=" perl-core/Math-BigRat";
DEPEND+=" perl-core/Math-BigRat";
depend-virtual Scalar-List-Utils # Scalar::Util
depend Sub-Exporter 0.950;
# depend Sub-Exporter-Util #= Sub::Exporter
depend-virtual Test-Simple # Test::Builder
# depend-virtual overload # CORE

ddep_setup

SRC_TEST="do"
