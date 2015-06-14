# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
MODULE_AUTHOR=MLEHMANN
MODULE_VERSION=2001
inherit perl-module

DESCRIPTION="canary to check perl compatibility for schmorp's modules"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
