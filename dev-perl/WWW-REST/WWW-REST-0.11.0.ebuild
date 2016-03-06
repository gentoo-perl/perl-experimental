# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=AUDREYT
MODULE_VERSION=0.011
inherit perl-module

DESCRIPTION="Base class for REST resources"
LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

# Class::Struct -> perl
# HTTP::Request::Common -> HTTP-Message
# LWP::UserAgent -> libwww-perl
IUSE="test"
RDEPEND="
	dev-perl/HTTP-Message
	dev-perl/libwww-perl
	dev-perl/URI
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	test? ( virtual/perl-Test-Simple )
"
