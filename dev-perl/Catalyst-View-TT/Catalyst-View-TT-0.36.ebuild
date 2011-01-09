# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
MODULE_AUTHOR=ABRAXXA
inherit perl-module

DESCRIPTION="Template View Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.700
	dev-perl/Class-Accessor
	dev-perl/MRO-Compat
	dev-perl/Path-Class
	dev-perl/Template-Timer
	dev-perl/Template-Toolkit
"
DEPEND="${RDEPEND}
	virtual/perl-Test-Simple
"
SRC_TEST="do"
