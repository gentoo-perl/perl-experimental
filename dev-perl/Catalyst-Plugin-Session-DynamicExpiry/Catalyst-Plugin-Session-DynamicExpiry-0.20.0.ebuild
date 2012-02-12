# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=NUFFIN
MODULE_VERSION="0.02"
inherit perl-module

DESCRIPTION="per-session custom expiry times"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.110.0
"
DEPEND="${RDEPEND}"
