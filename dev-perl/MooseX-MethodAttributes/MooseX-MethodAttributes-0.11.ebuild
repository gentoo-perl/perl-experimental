# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Code atttribute introspection"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-perl/namespace-clean
	dev-perl/Carp-Clan
	>=dev-perl/MooseX-Types-0.06
	>=dev-perl/Moose-0.70"
RDEPEND="${DEPEND}"

SRC_TEST=do
