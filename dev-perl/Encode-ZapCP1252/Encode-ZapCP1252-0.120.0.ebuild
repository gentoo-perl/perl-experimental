# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=DWHEELER
MODULE_VERSION="0.12"
inherit perl-module

DESCRIPTION="Zap Windows Western Gremlins"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	virtual/perl-Module-Build
"
DEPEND="${RDEPEND}"
