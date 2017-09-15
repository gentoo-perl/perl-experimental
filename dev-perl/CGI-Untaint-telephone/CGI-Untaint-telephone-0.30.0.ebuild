# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=TJC
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="CGI::Untaint plugin for telephone numbers"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-perl/CGI-Untaint-1.260.0"
DEPEND="$RDEPEND"

SRC_TEST=do
