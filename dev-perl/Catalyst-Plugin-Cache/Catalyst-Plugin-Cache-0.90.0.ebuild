# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.09"
inherit perl-module

DESCRIPTION="Flexible caching support for Catalyst"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Catalyst-Runtime-5.700.0
	dev-perl/Test-Deep
	dev-perl/Test-Exception
	dev-perl/MRO-Compat
"
