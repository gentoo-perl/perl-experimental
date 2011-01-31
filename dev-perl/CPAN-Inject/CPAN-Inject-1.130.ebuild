# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ADAMK
MODULE_VERSION="1.13"
inherit perl-module perl-declaredeps

DESCRIPTION="Base class for injecting distributions into CPAN sources"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
#PATCHES=(
#	"${FILESDIR}/Test-${PV}.patch"
#);

depend-virtual File-Spec 0.80
#depend File-stat 1.00 # CORE
depend File-chmod 0.30
depend-virtual File-Path 1.00
#depend File-Copy 2.02 # CORE
#depend File-Basename 2.6 # CORE
depend Params-Util 0.21
depend-virtual CPAN 1.360
depend CPAN-Checksums 1.05

test-depend-virtual Test-Simple 0.42 # Test::More
test-depend Test-Script 1.02
test-depend File-Remove 0.34

ddep_setup

SRC_TEST="do"
