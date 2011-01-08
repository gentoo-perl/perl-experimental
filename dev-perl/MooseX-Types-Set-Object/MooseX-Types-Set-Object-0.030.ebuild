# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="Set::Object type with coercions and stuff."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Moose-0.50
	dev-perl/Set-Object
	dev-perl/MooseX-Types
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-use-ok
		dev-perl/Test-Exception
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
