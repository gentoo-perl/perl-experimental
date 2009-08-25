# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=JROCKWAY
inherit perl-module

DESCRIPTION="helper for the incredibly lazy"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Class-C3
	dev-perl/Catalyst-Runtime
"
DEPEND="${RDEPEND}"
SRC_TEST=do
