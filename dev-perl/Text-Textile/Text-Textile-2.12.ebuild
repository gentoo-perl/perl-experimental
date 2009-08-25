# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BCHOATE
inherit perl-module

DESCRIPTION="A humane web text generator."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND=""
DEPEND="
	test? (
		virtual/perl-Test-Simple
		>=virtual/perl-Test-Harness-2.50
	)
"
SRC_TEST=do
