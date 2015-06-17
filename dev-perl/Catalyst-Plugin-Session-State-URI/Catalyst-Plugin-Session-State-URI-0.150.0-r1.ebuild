# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.15"
inherit perl-module

DESCRIPTION="Tracks session IDs by rewriting and parsing URIs delivered to the client"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.270.0
	dev-perl/URI
	dev-perl/URI-Find
	dev-perl/HTML-TokeParser-Simple
	dev-perl/MIME-Types
	>=dev-perl/Test-MockObject-1.01
	dev-perl/MRO-Compat
	dev-perl/namespace-clean
	dev-perl/Moose
	dev-perl/MooseX-Emulate-Class-Accessor-Fast
"
DEPEND="
	${RDEPEND}
	dev-perl/Class-Data-Inheritable
"
