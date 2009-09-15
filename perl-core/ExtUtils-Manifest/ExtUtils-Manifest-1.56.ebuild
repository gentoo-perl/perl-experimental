# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RKOBES
inherit perl-module

DESCRIPTION="utilities to write and check a MANIFEST file"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=virtual/perl-File-Spec-0.8
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"

SRC_TEST="do"
PREFER_BUILDPL="no"
