# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Template View Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.7
	dev-perl/Template-Toolkit
	dev-perl/Class-Accessor
	dev-perl/Template-Timer
	dev-perl/Path-Class
	dev-perl/MRO-Compat
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
