# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=1.05
inherit perl-module

DESCRIPTION="generate stubs for a SelfLoading module"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	>=virtual/perl-SelfLoader-1.90.300
	virtual/perl-File-Spec
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.35.0
"
SRC_TEST="do"
