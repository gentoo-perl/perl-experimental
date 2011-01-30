# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.005"
inherit perl-module perl-declaredeps

DESCRIPTION="ClassName type constraint with coercion toload the class."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

depend MooseX-Types 0.22
depend namespace-clean

test-depend Moose
test-depend-virtual Test-Simple 0.88 # Test::More

cdepend-virtual ExtUtils-MakeMaker 6.42

ddep_setup
SRC_TEST="do"
