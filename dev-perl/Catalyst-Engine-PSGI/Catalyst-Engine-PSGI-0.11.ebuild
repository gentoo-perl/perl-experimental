# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MIYAGAWA
inherit perl-module

DESCRIPTION="PSGI engine for Catalyst"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.8007
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
