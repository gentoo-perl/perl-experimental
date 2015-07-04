# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=DMCC
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION="A POE Component for the Net::OSCAR module"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Net-OSCAR-0.620.0
	>=virtual/perl-Time-HiRes-0.10.0
	>=dev-perl/POE-0.280.0
	>=dev-perl/Filter-Template-1.20.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
