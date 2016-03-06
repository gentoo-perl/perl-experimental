# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=KVENTIN
MODULE_VERSION=0.026
inherit perl-module

DESCRIPTION="Web traversal engine for robots and agents"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
# HTTP::Request -> HTTP-Message
# HTTP::Headers -> HTTP-Message
# HTML:TreeBuilder -> HTML-Tree
# URI::URL -> URI
# LWP::RobotUA -> libwww-perl
# IO::File -> IO
# HTML::LinkExtor -> HTML-Parser
RDEPEND="
	virtual/perl-IO
	dev-perl/HTTP-Message
	dev-perl/libwww-perl
	dev-perl/HTML-Tree
	dev-perl/URI
	dev-perl/HTML-Parser"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
