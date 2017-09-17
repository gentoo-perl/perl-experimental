# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=EVDB
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="read FormBuilder config from Perl syntax files"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	dev-perl/CGI-FormBuilder
	dev-perl/File-Slurp
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
