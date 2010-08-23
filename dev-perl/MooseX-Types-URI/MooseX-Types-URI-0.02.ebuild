# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="URI related types and coercions for Moose"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Test-use-ok
	>=dev-perl/Moose-0.50
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-Path-Class
	dev-perl/URI
	dev-perl/URI-FromHash
	>=dev-perl/namespace-clean-0.08
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
