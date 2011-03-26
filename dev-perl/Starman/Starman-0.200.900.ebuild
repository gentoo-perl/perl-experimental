# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.2009
inherit perl-module

DESCRIPTION="High-performance preforking PSGI web server"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+recommended"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Plack-0.997.100
	>=dev-perl/net-server-0.91
	dev-perl/Data-Dump
	dev-perl/HTTP-Parser-XS
	dev-perl/libwww-perl
	virtual/perl-parent
	>=dev-perl/Test-TCP-1.110  $(comment 1.110.0)
	recommended? (
		dev-perl/Server-Starter
		dev-perl/Net-Server-SS-PreFork
	)
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
