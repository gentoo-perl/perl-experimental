# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=ANDREMAR
MODULE_VERSION=0.100330
inherit perl-module

DESCRIPTION="Dump your loaded module versions to the debug-screen"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/CGI-Application
	dev-perl/Catalyst-Runtime
	dev-perl/MRO-Compat
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-MockObject
		dev-perl/Test-WWW-Mechanize-Catalyst
		dev-perl/Test-use-ok
	)
"

SRC_TEST=do
