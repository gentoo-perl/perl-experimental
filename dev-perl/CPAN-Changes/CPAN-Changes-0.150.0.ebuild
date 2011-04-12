# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BRICAS
MODULE_VERSION=0.15
inherit perl-module

DESCRIPTION="Read and write Changes files"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	virtual/perl-Text-Tabs+Wrap $(comment Text::Wrap)
	virtual/perl-version
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.42 $(comment 6.420.0)
	test? (
		virtual/perl-Test-Simple $(comment Test::More)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
