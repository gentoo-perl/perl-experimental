# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
MODULE_AUTHOR=JLMARTIN
MODULE_VERSION=0.28
inherit perl-module

DESCRIPTION="Base Server plugin for RPC-able protocols"

SLOT="0"
KEYWORDS=""
IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.660.0
	dev-perl/Clone-Fast
	dev-perl/MRO-Compat
	>=dev-perl/RPC-XML-0.770.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
