# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KMX
inherit perl-module

DESCRIPTION="A minimal lightweight exception class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=virtual/perl-Scalar-List-Utils-1.10
"
DEPEND="
	${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.47
	)
"
SRC_TEST=do
