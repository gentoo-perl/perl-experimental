# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (basic toolchain)"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+cpanm +locallib +version"
COMMON_DEPEND="
	cpanm? ( dev-perl/App-cpanminus )
	locallib? ( dev-perl/local-lib )
	version? ( virtual/perl-version )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
