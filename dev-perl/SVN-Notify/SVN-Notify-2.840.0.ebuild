# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DWHEELER
MODULE_VERSION=2.84
inherit perl-module

DESCRIPTION='Subversion activity notification'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="test" # Broken as hell, Not even sure if it works
RDEPEND="
	>=virtual/perl-Getopt-Long-2.340.0
	>=dev-lang/perl-5.6.0
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.270.100
	virtual/perl-File-Spec
	>=virtual/perl-Test-Simple-0.170.0
"
