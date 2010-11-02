# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MSCHWERN
inherit perl-module

DESCRIPTION="Inspect the fields of a class."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-perl/Carp-Assert"
RDEPEND="${DEPEND}"

SRC_TEST="do"
