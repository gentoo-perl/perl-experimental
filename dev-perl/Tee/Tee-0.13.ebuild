# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=DAGOLDEN
inherit perl-module

DESCRIPTION="Pure Perl emulation of GNU tee"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Probe-Perl
	>=dev-perl/IPC-Run3-0.033
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
