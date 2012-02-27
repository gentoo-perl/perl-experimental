# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=TMTM
MODULE_VERSION="3.6"
inherit perl-module

DESCRIPTION="Handle highlighting search result context snippets"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Text-Context-EitherSide-1.1
	>=dev-perl/UNIVERSAL-require-0.03
"
DEPEND="
	${RDEPEND}
"

SRC_TEST=do
