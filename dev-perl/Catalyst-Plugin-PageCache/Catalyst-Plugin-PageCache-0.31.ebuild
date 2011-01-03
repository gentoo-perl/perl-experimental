# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=TIMB
inherit perl-module

DESCRIPTION="Cache the output of entire pages"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/MRO-Compat-0.10
	dev-perl/Digest-SHA1
"
DEPEND="${RDEPEND}
	virtual/perl-Test-Simple
	>=dev-perl/Catalyst-Plugin-Cache-0.10
	>=dev-perl/Cache-Cache-1.04
	>=virtual/perl-File-Path-2.08
"
SRC_TEST="do"
