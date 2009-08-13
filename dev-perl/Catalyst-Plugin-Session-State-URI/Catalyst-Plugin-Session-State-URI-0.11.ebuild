# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=DROLSKY
inherit perl-module

DESCRIPTION="Tracks session IDs by rewriting and parsing URIs delivered to the client"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.06
	dev-perl/URI
	dev-perl/URI-Find
	dev-perl/HTML-TokeParser-Simple
	dev-perl/MIME-Types
	>=dev-perl/Test-MockObject-1.01
	dev-perl/MRO-Compat
"
RDEPEND="${DEPEND}"
SRC_TEST=do
