# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=NUFFIN
MODULE_VERSION="0.03"
inherit perl-module

DESCRIPTION="Generalized Inverted Indexing"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/Moose
	dev-perl/MooseX-Types-Path-Class
	dev-perl/MooseX-Types-Set-Object
	>=dev-perl/namespace-clean-0.80.0
	>=dev-perl/Data-Stream-Bulk-0.30.0
	dev-perl/Scope-Guard
	dev-perl/Set-Object
	dev-perl/MRO-Compat
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-use-ok
		virtual/perl-Test-Simple
		dev-perl/Test-TempDir
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
