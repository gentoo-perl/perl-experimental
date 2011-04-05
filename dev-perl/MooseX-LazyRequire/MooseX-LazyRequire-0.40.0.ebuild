# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.04"
inherit perl-module

DESCRIPTION="Required attributes which fail only when trying to use them"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	dev-perl/MooseX-Types
	dev-perl/namespace-autoclean
	>=dev-perl/aliased-0.300.0
	dev-perl/Moose
"
DEPEND="
	${RDEPEND}
"
SRC_TEST="do"
