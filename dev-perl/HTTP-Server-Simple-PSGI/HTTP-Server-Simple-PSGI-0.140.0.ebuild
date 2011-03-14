# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION="0.14"
inherit perl-module

DESCRIPTION="PSGI handler for HTTP::Server::Simple"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/HTTP-Server-Simple-0.42
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
