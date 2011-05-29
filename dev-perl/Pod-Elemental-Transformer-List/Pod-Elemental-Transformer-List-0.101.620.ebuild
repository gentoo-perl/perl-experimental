# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.101620
inherit perl-module

DESCRIPTION="transform :list regions into =over/=back to save typing"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	dev-perl/Moose
	>=dev-perl/Pod-Elemental-0.101.620
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Test-Differences
	virtual/perl-Test-Simple
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
