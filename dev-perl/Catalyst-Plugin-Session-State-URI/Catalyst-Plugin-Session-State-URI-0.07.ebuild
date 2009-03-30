# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="Tracks session IDs by rewriting and parsing URIs delivered to the client"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
EAPI=2
IUSE=""
DEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.06
	dev-perl/HTML-TokeParser-Simple
	>=dev-perl/Test-MockObject-1.01
	dev-perl/MIME-Types
	dev-perl/URI
	dev-perl/URI-Find
"
RDEPEND="${DEPEND}"
