# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="A Moose role for setting attributes from a simple configfile"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
# This is done like this so install matches 
# upstream if Test-More is ever forked
COMMON_DEPEND="
	>=dev-perl/Config-Any-0.10
	>=dev-perl/Moose-0.35
	>=dev-perl/MooseX-ConfigFromFile-0.02
"

DEPEND="
	${COMMON_DEPEND}
"
# test? ( >=Test-More-0.47 )

RDEPEND="${COMMON_DEPEND}"
SRC_TEST="do"
