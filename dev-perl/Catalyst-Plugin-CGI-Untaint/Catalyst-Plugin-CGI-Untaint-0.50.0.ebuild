# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=TJC
MODULE_VERSION=0.05
inherit perl-module

#S=${WORKDIR}/${P}
DESCRIPTION="Catalyst plugin for CGI::Untaint."

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.500.0
	>=dev-perl/CGI-Untaint-1.20
"
DEPEND="$RDEPEND"

SRC_TEST=do
