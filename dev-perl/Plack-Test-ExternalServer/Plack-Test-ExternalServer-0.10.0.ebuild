# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="Run HTTP tests on external live servers
"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=virtual/perl-Test-Simple-0.89 $(comment Test::More 0.890.0)
	dev-perl/URI
	dev-perl/libwww-perl $(comment LWP::UserAgent)
	dev-perl/Plack $(comment Plack::Test)
	dev-perl/Test-TCP
	dev-perl/Plack $(comment Plack::Loader)
	|| (
		$(comment HTTP::Request::Common)
		dev-perl/HTTP-Message
		<=dev-perl/libwww-perl-6.0.0
	)
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
