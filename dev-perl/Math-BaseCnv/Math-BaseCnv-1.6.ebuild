# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

MODULE_AUTHOR=PIP
MODULE_VERSION="1.6.A6FGHKE"
MODULE_A_EXT="tgz"
inherit perl-module

DESCRIPTION="fast functions to CoNVert between number Bases"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="virtual/perl-Module-Build
	test? ( dev-perl/Test-Pod-Coverage )"
RDEPEND=""

SRC_TEST=do
