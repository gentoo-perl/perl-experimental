# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DWHEELER
MODULE_VERSION=0.33
inherit perl-module

DESCRIPTION='Zap Windows Western Gremlins'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	>=dev-lang/perl-5.6.2
	>=virtual/perl-Test-Simple-0.170.0
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.360.0
"
PERL_RM_FILES=(
	t/pod.t
)
SRC_TEST="do"
