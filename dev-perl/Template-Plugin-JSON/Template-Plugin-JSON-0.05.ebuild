# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=NUFFIN

inherit perl-module

DESCRIPTION="Encodes text to be safe in JavaScript"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Mouse
	>=dev-perl/Template-Toolkit-2.20
	dev-perl/Test-use-ok
	>=dev-perl/JSON-2.12
"
