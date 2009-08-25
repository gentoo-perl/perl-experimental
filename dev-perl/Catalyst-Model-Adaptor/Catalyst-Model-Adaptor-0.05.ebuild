# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="helper for the incredibly lazy"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	dev-perl/MRO-Compat
"
DEPEND="
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Catalyst-Runtime
		dev-perl/Test-use-ok
	)
"
SRC_TEST=do
