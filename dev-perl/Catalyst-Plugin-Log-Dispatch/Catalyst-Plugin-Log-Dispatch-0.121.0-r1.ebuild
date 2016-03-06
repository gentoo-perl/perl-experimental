# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=SHOT
MODULE_VERSION=0.121
inherit perl-module

DESCRIPTION="Log module of Catalyst that uses Log::Dispatch"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/Log-Dispatch-2.130.0
	>=dev-perl/Catalyst-Runtime-5.650.0
	dev-perl/UNIVERSAL-require
	virtual/perl-Test-Simple
"
DEPEND="
	${RDEPEND}
	dev-perl/Module-Build
"
PERL_RM_FILES=(
	t/pod.t
)
SRC_TEST="do"
