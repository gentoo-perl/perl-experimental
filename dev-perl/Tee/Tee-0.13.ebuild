# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DAGOLDEN
inherit perl-module

DESCRIPTION="Pure Perl emulation of GNU tee"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/Probe-Perl
	>=dev-perl/IPC-Run3-0.033
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"
SRC_TEST="do"
