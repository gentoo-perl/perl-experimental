# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=ELIZABETH
MODULE_VERSION=0.19
inherit perl-module

DESCRIPTION="provide API for managing cached information  "

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/Cache-Memcached
	net-misc/memcached
"
DEPEND="${RDEPEND}"
SRC_TEST=do
