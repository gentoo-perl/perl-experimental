# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION="Override LWP's HTTP/HTTPS backend with your own PSGI application"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/Guard
	dev-perl/Plack
	>=dev-perl/libwww-perl-5.0.0
"

DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.34.0
	>=virtual/perl-Test-Simple-0.88.0
	dev-perl/Test-Requires
"
