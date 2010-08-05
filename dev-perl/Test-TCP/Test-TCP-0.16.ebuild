# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=TOKUHIROM
inherit perl-module

DESCRIPTION="testing TCP program"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="virtual/perl-Filter
	>=virtual/perl-IO-1.23
	>=dev-perl/Test-SharedFork-0.09"
DEPEND="${RDEPEND}"

SRC_TEST=do
