# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Apply roles to action instances"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/MooseX-Types
	dev-perl/namespace-clean
	>=dev-perl/Class-MOP-0.80
	>=dev-perl/String-RewritePrefix-0.004
	>=dev-perl/Catalyst-Runtime-5.71001
	>=dev-perl/Moose-0.90
"
RDEPEND="${DEPEND}"
SRC_TEST=do
