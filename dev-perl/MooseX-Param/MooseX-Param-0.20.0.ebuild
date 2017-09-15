# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=STEVAN
MODULE_VERSION="0.02"
inherit perl-module

DESCRIPTION="Simple role to provide a standard param method"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Moose-0.320.0
"
DEPEND="
	dev-perl/Module-Build
	>=dev-perl/Test-Exception-0.21
	${RDEPEND}
"
