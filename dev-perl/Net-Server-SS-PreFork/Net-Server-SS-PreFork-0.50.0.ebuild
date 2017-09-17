# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=KAZUHO
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION="a hot-deployable variant of Net::Server::PreFork"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/Net-Server
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
