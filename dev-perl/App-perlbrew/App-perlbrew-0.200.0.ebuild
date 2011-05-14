# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=GUGOD
MODULE_VERSION=0.20
inherit perl-module

DESCRIPTION='Manage perl installations in your $HOME'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Devel-PatchPerl-0.260.0
"
DEPEND="
	test? (
		virtual/perl-Test-Simple
		$(comment Test::More)
		dev-perl/Test-Output
	)
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
