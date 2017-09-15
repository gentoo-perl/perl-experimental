# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=SARTAK
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION='default "is" to "ro" or "rw" for all attributes'

SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Moose-0.940.0
"
DEPEND="${RDEPEND}
	dev-perl/Test-Exception
	>=virtual/perl-ExtUtils-MakeMaker-6.42
"
