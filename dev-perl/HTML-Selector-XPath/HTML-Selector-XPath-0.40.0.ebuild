# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR="MIYAGAWA"
MODULE_VERSION="0.04"
inherit perl-module

DESCRIPTION="CSS Selector to XPath compiler"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-perl/Test-Base )"

SRC_TEST="do"
