# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="Run HTTP tests on external live servers"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	dev-perl/HTTP-Message
	dev-perl/Plack
	>=virtual/perl-Test-Simple-0.890.0
	dev-perl/Test-TCP
	dev-perl/URI
	dev-perl/libwww-perl
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
