# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=ADAMK
MODULE_VERSION="0.901"
inherit perl-module

DESCRIPTION="(Minor) XS acceleration for PPI"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/PPI-1.0.0
	"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-File-Spec-0.82
		>=virtual/perl-Test-Simple-0.47
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
