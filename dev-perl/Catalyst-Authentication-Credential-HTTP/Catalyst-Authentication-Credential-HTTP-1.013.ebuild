# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="HTTP Basic and Digest authentication for Catalyst."

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/Catalyst-Plugin-Authentication-0.10005
	>=dev-perl/Data-UUID-0.11
	dev-perl/String-Escape
	dev-perl/URI
	dev-perl/Class-Accessor
"
DEPEND="
	dev-perl/Test-Exception
	dev-perl/Test-MockObject
	>=virtual/perl-Test-Simple-0.88
	${RDEPEND}
"
SRC_TEST="do"
