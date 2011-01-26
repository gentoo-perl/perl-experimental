# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR="RJBS"
MODULE_VERSION="0.002"

inherit perl-module perl-declaredeps

DESCRIPTION="export shared globs with Sub::Exporter collectors"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

bdepend-virtual Test-Simple 0.96 # Test::More

cdepend-virtual ExtUtils-MakeMaker 6.56

depend-virtual Scalar-List-Utils # Scalar::Util
depend Sub-Exporter

ddep_setup;

SRC_TEST="do"
