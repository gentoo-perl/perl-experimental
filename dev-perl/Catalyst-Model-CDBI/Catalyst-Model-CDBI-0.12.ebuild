# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="[DEPRECATED] Helper for CDBI Models"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/MRO-Compat
	dev-perl/Class-DBI
	>=dev-perl/Class-DBI-Loader-0.20
"

pkg_setup() {
	ewarn "This module is DEPRECATED"
}

