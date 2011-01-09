# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION="PSGI engine for Catalyst"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.300
	dev-perl/Catalyst-Action-RenderView
"
DEPEND="${RDEPEND}
	virtual/perl-Test-Simple
	test? (
		dev-perl/Test-TCP
		dev-perl/Test-Requires
	)
"
SRC_TEST="do"
