# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=FLORA
MODULE_VERSION="1.05"
inherit perl-module

DESCRIPTION="generate stubs for a SelfLoading module"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=virtual/perl-SelfLoader-1.90.300
	virtual/perl-File-Spec
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.35
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
