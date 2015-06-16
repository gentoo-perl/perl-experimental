# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
MODULE_AUTHOR=TBONE
MODULE_VERSION=1.9
inherit perl-module

DESCRIPTION="API for locating user information regardless of OS"

IUSE=""

SLOT="0"

KEYWORDS="~amd64 ~x86"

RDEPEND=""
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
