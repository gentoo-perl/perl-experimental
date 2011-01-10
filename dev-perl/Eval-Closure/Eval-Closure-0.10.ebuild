# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
MODULE_AUTHOR=DOY
MODULE_VERSION=0.01

inherit perl-module perl-declaredeps

DESCRIPTION="safely and cleanly create closures via string eval"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

test-depend Test-Fatal
test-depend-virtual Test-Simple 0.88
test-depend Test-Requires

depend-virtual Scalar-List-Utils
depend Sub-Exporter
depend Try-Tiny

bdepend-virtual ExtUtils-MakeMaker 6.56

ddep_setup
SRC_TEST="do"
