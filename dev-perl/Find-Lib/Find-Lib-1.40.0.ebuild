# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=YANNK
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="Helper to smartly find libs to use in the filesystem tree"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment Test::More)
	virtual/perl-Test-Simple
	$(comment File::Spec)
	virtual/perl-File-Spec
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
