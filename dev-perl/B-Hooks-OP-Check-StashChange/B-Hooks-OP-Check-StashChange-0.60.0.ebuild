# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_VERSION=0.06
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Invoke callbacks when the stash code is being compiled in changes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/B-Hooks-OP-Check-0.14
"
DEPEND="${RDEPEND}
	dev-perl/extutils-depends"

SRC_TEST=do
