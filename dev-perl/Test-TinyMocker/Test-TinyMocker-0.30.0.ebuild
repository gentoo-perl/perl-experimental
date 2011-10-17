# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=SUKRIA
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="A very simple tool to mock external modules"

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
