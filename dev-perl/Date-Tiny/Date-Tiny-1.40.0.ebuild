# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ADAMK
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="A date object with as little code as possible"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

PERL_RM_FILES=(
	t/99_pmv.t
	t/98_pod.t
	t/97_meta.t
)
RDEPEND=""
# >=Test-More-0.47
DEPEND="${RDEPEND}
	>=virtual/perl-Test-Simple-0.470.0
"
