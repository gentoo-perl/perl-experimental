# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=NAOYA
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="For using CGI::Application under FastCGI"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/CGI-Application-3.0.0
	>=dev-perl/FCGI-0.600.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
