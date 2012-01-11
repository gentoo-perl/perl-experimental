# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MADCAT
MODULE_VERSION=1.05
inherit perl-module

DESCRIPTION='"proper" handling of DBI based connections in Mojolicious'
LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	dev-perl/Mojolicious
	dev-perl/DBI
"
DEPEND="
	${RDEPEND}
"
SRC_TEST="do"
