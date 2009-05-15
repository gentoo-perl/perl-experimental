# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Drop-in relacement for NEXT which uses Class::C3"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-perl/MRO-Compat
	dev-perl/List-MoreUtils"
RDEPEND="${DEPEND}"

SRC_TEST=do
