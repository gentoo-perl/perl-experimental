# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MSCHWERN
MODULE_VERSION=0.204
inherit perl-module

DESCRIPTION="Inspect the fields of a class."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-perl/Carp-Assert"
RDEPEND="${DEPEND}"
