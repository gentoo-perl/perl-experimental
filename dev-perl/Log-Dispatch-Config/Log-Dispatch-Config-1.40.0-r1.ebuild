# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="Log4j for Perl"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# IO::Scalar -> IO-stringy
RDEPEND="
	>=dev-perl/AppConfig-1.520.0
	>=virtual/perl-File-Temp-0.120.0
	dev-perl/IO-stringy
	>=dev-perl/Log-Dispatch-2.0.0
	>=virtual/perl-Test-Simple-0.320.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
