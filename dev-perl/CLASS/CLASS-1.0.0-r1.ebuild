# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=MSCHWERN
MODULE_VERSION=1.00
inherit perl-module

DESCRIPTION="Alias for __PACKAGE__"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
REPEND=""
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.70.0
	)
"
