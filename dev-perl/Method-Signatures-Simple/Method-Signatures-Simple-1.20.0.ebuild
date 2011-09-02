# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RHESA
MODULE_VERSION=1.02
inherit perl-module

DESCRIPTION="Basic method declarations with signatures, without source filters"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
RDEPEND="
	$(comment Devel::Declare 0.003001)
	>=dev-perl/Devel-Declare-0.3.1
"
DEPEND="${RDEPEND}
	$(comment configure)
	$(comment ExtUtils::MakeMaker 6.56)
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"

SRC_TEST="do"
