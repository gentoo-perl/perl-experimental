# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=AMBS
MODULE_VERSION=0.16
MODULE_SECTION=Config
inherit perl-module

DESCRIPTION="A module to implement some of AutoConf macros in pure perl"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="
	test? (
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage
	)
"

SRC_TEST=do
