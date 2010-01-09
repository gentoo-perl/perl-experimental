# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RHESA
inherit perl-module

DESCRIPTION="Basic method declarations with signatures, without source filters"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-perl/Test-Pod-Coverage
	dev-perl/Devel-Declare"
RDEPEND="${DEPEND}"

SRC_TEST="do"
