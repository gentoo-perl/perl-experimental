# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=TOKUHIROM
inherit perl-module

DESCRIPTION="testing TCP program"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Test-SharedFork-0.09
	>=virtual/perl-IO-1.23
"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/yaml
	)
"

SRC_TEST=do
