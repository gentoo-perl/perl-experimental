# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=KHAMPTON
MODULE_VERSION=0.93
inherit perl-module

DESCRIPTION="Perl extension for generating SAX2 events from nested Perl data structures"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/XML-SAX-Base-1.20.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
