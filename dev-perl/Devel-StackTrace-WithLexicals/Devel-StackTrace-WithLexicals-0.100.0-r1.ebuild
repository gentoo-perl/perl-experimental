# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=SARTAK
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="Devel::StackTrace + PadWalker"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Devel-StackTrace-1.25 $(comment 1.250.0)
	>=dev-perl/PadWalker-1.920 $(comment 1.920.0)
"
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"
