# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=GWYN
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="Install shared files"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment ExtUtils::MakeMaker 6.11)

	$(comment IO::Dir)
	virtual/perl-IO

	$(comment File::Spec)
	virtual/perl-File-Spec
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.11
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
