# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION="1.4003"
inherit perl-module perl-declaredeps

DESCRIPTION="get, unpack, build and install modules from CPAN"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

depend-virtual Module-Build 0.36
depend-virtual ExtUtils-MakeMaker 6.31
depend-virtual ExtUtils-Install 1.46

ddep_setup
SRC_TEST="do"
