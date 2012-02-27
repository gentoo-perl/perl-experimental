# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=AGRUNDMA
MODULE_VERSION="0.21"
inherit perl-module

DESCRIPTION="Cache the output of entire pages"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/Catalyst-Runtime
"
RDEPEND="${DEPEND}"
