# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MADCAT
MODULE_VERSION=1.20
inherit perl-module

DESCRIPTION='A plugin to make authentication a bit easier'
LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	dev-perl/Mojolicious
"
DEPEND="
	${RDEPEND}
"
SRC_TEST="do"
