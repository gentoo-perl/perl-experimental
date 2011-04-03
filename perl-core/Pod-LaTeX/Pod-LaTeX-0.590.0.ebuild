# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=TJENNESS
MODULE_VERSION="0.59"
inherit perl-module

DESCRIPTION="Convert Pod data to formatted Latex"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=virtual/perl-PodParser-0.3
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Module-Build-0.36
	test? ( virtual/perl-Test-Simple )
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
