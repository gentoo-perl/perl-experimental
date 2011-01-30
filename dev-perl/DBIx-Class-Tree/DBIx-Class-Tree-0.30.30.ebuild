# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=ABRAXXA
MODULE_VERSION="0.03003"
inherit perl-module perl-declaredeps

DESCRIPTION="Manipulate and anaylze tree structured data."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

cdepend-virtual ExtUtils-MakeMaker 6.42

depend DBIx-Class 0.08100

test-depend Test-Exception

ddep_setup

SRC_TEST=do
