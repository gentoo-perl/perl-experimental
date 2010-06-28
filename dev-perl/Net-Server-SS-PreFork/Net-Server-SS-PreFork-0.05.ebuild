# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=KAZUHO
inherit perl-module

DESCRIPTION="a hot-deployable variant of Net::Server::PreFork"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/net-server
	>=dev-perl/Server-Starter-0.02
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/libwww-perl
		>=dev-perl/Test-TCP-0.06
		dev-perl/HTTP-Server-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
