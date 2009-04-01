# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=BLBLACK
inherit perl-module

DESCRIPTION="An abstract Moose role for setting attributes from a configfile"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Moose-0.35
	>=dev-perl/MooseX-Types-Path-Class-0.04
"
# >=Test-More-0.47
RDEPEND="${DEPEND}"
SRC_TEST="do"
