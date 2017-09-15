# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MLEHMANN
MODULE_VERSION=1.02
inherit perl-module

DESCRIPTION="Interface to (some parts of) the Linux DVB API"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
export PERL_CANARY_STABILITY_NOPROMPT=1
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.520.0
	>=dev-perl/Canary-Stability-2001.0.0
"
