# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=ANDREMAR
inherit perl-module

DESCRIPTION="Dump your loaded module versions to the debug-screen"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Test-MockObject
	dev-perl/CGI-Application
	dev-perl/Catalyst-Runtime
	dev-perl/Test-WWW-Mechanize-Catalyst
	dev-perl/MRO-Compat
"
