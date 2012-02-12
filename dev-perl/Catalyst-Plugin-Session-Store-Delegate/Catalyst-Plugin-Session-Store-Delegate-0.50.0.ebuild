# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="Delegate session storage to an application model object."

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.120.0
	dev-perl/Class-Accessor
	dev-perl/MRO-Compat
"
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/Test-use-ok
		virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
