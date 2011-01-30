# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=FAYLAND
MODULE_VERSION="0.17"
inherit perl-module perl-declaredeps

DESCRIPTION="Automatically sets repository URL from svn/svk/Git checkout for Dist::Zilla"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

cdepend-virtual ExtUtils-MakeMaker 6.56

bdepend-virtual Test-Simple 0.88 # Test::More
bdepend Dist-Zilla 4.102.340 # Dist::Zilla::Tester 4.102340

depend  Dist-Zilla 4.102.340

SRC_TEST="do"
