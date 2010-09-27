# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3

MODULE_AUTHOR=BOBTFISH
# Strip the tailing 0 so 0.80 -> 0.8
MY_P="${PN}-${PV%0}"
S="${WORKDIR}/${MY_P}"
inherit perl-module

DESCRIPTION="Distributed cache"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.7006
	dev-perl/Cache-Memcached
"
DEPEND="${RDEPEND}"

SRC_TEST=do
