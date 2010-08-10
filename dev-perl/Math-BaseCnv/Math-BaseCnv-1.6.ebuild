# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

MODULE_AUTHOR=PIP
MY_P="${P}.A6FGHKE"
MODULE_A="${MY_P}.tgz"
S="${WORKDIR}/${MY_P}"
inherit perl-module

DESCRIPTION="fast functions to CoNVert between number Bases"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/perl-Module-Build"
RDEPEND=""
