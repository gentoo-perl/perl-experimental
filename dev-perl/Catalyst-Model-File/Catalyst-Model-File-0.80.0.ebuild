# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ASH
MODULE_VERSION="0.08"
inherit perl-module

DESCRIPTION="File based storage model for Catalyst."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.690.0
	dev-perl/Catalyst-Component-InstancePerContext
	dev-perl/Path-Class
	dev-perl/MRO-Compat
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
