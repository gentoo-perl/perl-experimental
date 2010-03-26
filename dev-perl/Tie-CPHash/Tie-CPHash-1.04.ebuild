# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

MODULE_AUTHOR="CJM"
inherit perl-module

DESCRIPTION="Case preserving but case insensitive hash table"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="perl-core/File-Spec"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST="do"
