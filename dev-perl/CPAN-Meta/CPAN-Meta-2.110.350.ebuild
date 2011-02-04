# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=2.110350
inherit perl-module perl-declaredeps

DESCRIPTION="the distribution metadata for a CPAN dist "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# bdepend Data-Dumper # CORE
bdepend-virtual File-Spec
bdepend-virtual File-Temp 0.20
bdepend-virtual IO # IO::Dir
bdepend-virtual Parse-CPAN-Meta 1.430
bdepend-virtual Test-Simple 0.96 # Test::More

cdepend-virtual ExtUtils-MakeMaker 6.56

# depend Carp # CORE
depend-virtual Parse-CPAN-Meta 1.430
depend-virtual Scalar-List-Utils # Scalar-Util
depend-virtual Storable
depend Version-Requirements 0.101020
depend autodie
depend-virtual version 0.82

ddep_setup

SRC_TEST="do"
