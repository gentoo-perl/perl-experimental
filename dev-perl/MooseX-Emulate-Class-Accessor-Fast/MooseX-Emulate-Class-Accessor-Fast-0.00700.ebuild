# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=GRODITI
inherit perl-module

DESCRIPTION="Emulate Class::Accessor::Fast behavior using Moose attributes"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Moose-0.31
	!!>dev-perl/Class-MOP-0.78
"
RDEPEND="${DEPEND}"
