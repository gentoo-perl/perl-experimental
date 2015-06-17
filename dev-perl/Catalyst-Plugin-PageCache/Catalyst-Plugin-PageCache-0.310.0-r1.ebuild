# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=TIMB
MODULE_VERSION="0.31"
inherit perl-module

DESCRIPTION="Cache the output of entire pages"

IUSE=""

SLOT="0"

KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/MRO-Compat-0.100.0
	dev-perl/Digest-SHA1
"
DEPEND="${RDEPEND}
	virtual/perl-Test-Simple
	>=dev-perl/Catalyst-Plugin-Cache-0.100.0
	>=dev-perl/Cache-Cache-1.04
	>=virtual/perl-File-Path-2.08
"
