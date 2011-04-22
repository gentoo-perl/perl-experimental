# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=SARTAK
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="Devel::StackTrace + PadWalker"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/Devel-StackTrace-1.22
	dev-perl/PadWalker
"
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

SRC_TEST=do
