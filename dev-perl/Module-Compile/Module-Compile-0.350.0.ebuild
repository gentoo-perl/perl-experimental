# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
MODULE_AUTHOR=INGY
MODULE_VERSION=0.35
inherit perl-module

DESCRIPTION="Perl Module Optimization"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	>=dev-perl/Digest-SHA1-2.130.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
"
PERL_RM_FILES=(
	t/release-pod-syntax.t
)
