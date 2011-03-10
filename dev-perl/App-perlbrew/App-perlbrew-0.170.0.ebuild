# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=GUGOD
MODULE_VERSION=0.17
inherit perl-module

DESCRIPTION='Manage perl installations in your $HOME'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
"
DEPEND="
	test? (
		virtual/perl-Test-Simple
	)
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
