# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.100110
inherit perl-module perl-declaredeps

DESCRIPTION="perl implementation of Rx schema system"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

cdepend-virtual ExtUtils-MakeMaker 6.31;

depend-virtual Scalar-List-Utils # Scalar-Util
depend-virtual Module-Pluggable 3.7
depend File-Find-Rule
depend-virtual ExtUtils-MakeMaker 6.11;
depend Number-Tolerant 1.701;
# depend-virtual Carp # CORE
depend-virtual Scalar-List-Utils # List-Util
depend-virtual Test-Simple # Test::More
depend autodie
depend JSON 2;
depend-virtual Module-Pluggable # Module::Pluggable::Object

ddep_setup

SRC_TEST="do"
