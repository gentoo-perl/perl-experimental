# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=DMAKI
MODULE_VERSION="1.00001"
inherit perl-module

DESCRIPTION="FormFu In Your Model"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Best
	dev-perl/Catalyst-Runtime
	dev-perl/Config-Any
	dev-perl/Data-Visitor
	>=dev-perl/HTML-FormFu-0.20.0
"
DEPEND="${RDEPEND}"
