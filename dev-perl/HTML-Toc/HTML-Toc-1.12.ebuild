# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=FVULTO
inherit perl-module

DESCRIPTION="Generate, insert and update HTML Table of Content."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/HTML-Parser
"
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/Test-Differences
	)
"

SRC_TEST=do
