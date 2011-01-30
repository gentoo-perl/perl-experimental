# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="HTTP Basic and Digest authentication for Catalyst."

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/Catalyst-Plugin-Authentication-0.100
	>=dev-perl/Data-UUID-0.11
	dev-perl/String-Escape
	dev-perl/URI
	dev-perl/Class-Accessor
"
DEPEND="
	test? (
		dev-perl/Test-MockObject
		dev-perl/Test-Exception
	)
	${RDEPEND}
"
SRC_TEST="do"
