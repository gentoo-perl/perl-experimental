# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.03"
inherit perl-module

DESCRIPTION="Memcached storage backend for session data."

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.10.0
	dev-perl/Cache-Memcached-Managed
	dev-perl/MRO-Compat
"
DEPEND="${RDEPEND}"
