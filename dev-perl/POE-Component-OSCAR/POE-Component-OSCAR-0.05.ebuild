# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=DMCC
inherit perl-module

DESCRIPTION="A POE Component for the Net::OSCAR module"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND=">=dev-perl/Net-OSCAR-0.62
	>=virtual/perl-Time-HiRes-0.01
	>=dev-perl/POE-0.28
	>=dev-perl/Filter-Template-1.02"
DEPEND="${RDEPEND}"
