# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ABH
MODULE_VERSION=1.13
inherit perl-module

DESCRIPTION='Template Toolkit renderer for Mojo'
LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	>=dev-perl/Mojolicious-1.3
	>=dev-perl/Template-Toolkit-2.18
"
DEPEND="
	${RDEPEND}
"
SRC_TEST="do"
