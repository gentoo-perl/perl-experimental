# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MIYAGAWA
inherit perl-module

DESCRIPTION="Displays stack trace in HTML "

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Devel-StackTrace
	virtual/perl-Filter"
DEPEND="${RDEPEND}"

SRC_TEST=do
