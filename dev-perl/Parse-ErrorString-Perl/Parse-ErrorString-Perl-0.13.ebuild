# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=SZABGAB
inherit perl-module

DESCRIPTION="Parse error messages from the perl interpreter"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

RDEPEND="dev-lang/perl
	dev-perl/Class-XSAccessor
	virtual/perl-PodParser
	dev-perl/Pod-POM"
DEPEND="${RDEPEND}
	test? ( dev-perl/Test-Differences )"

SRC_TEST=do
