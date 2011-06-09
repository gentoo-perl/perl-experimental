# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.40
inherit perl-module

DESCRIPTION="Patch perl source a la Devel::PPort's buildperl.pl"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/File-pushd-1.00 $(comment 1.0.0)
	virtual/perl-IO $(comment IO::File)
	>=virtual/perl-IPC-Cmd-0.400 $(comment 0.400.0)
	virtual/perl-MIME-Base64
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
