# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=MIYAGAWA
inherit perl-module

DESCRIPTION="High-performance preforking PSGI web server"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test +recommended"
COMMON_DEPEND="
	>=dev-perl/Plack-0.9931
	>=dev-perl/net-server-0.91
	dev-perl/Data-Dump
	dev-perl/HTTP-Parser-XS
	dev-perl/libwww-perl
	virtual/perl-parent
	recommended? (
		dev-perl/Server-Starter
		dev-perl/Net-Server-SS-PreFork
	)
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
	test? (
		dev-perl/Test-Requires
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
