# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=NEVESENIN
MODULE_VERSION="1.000001"
inherit perl-module perl-declaredeps

DESCRIPTION="Another CSS minifier"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

test-depend-virtual Test-Simple ; # Test::More
depend Regexp-RegGrp 1.0.1;

ddep_setup;

SRC_TEST=do
