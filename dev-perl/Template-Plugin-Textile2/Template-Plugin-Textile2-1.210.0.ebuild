# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ARTHAS
MODULE_VERSION=1.21
inherit perl-module

DESCRIPTION="Use Textile formatting with Template Toolkit"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Module-Build
	>=dev-perl/Template-Toolkit-2.150.0
	>=dev-perl/Text-Textile-2.03
"
DEPEND="$RDEPEND"

SRC_TEST=do
