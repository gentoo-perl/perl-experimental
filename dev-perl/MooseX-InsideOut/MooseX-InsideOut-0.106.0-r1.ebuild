# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=DOY
MODULE_VERSION="0.106"
inherit perl-module

DESCRIPTION="inside-out objects with Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/Moose-1.990.0
	>=dev-perl/Moose-0.940.0
	dev-perl/Hash-Util-FieldHash-Compat
	>=dev-perl/namespace-clean-0.110.0
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
