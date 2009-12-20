# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Base class for working with Perl distributions"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-File-Temp
	virtual/perl-Archive-Extract"
DEPEND="${RDEPEND}"

SRC_TEST=do
