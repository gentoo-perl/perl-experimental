# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=ILMARI
inherit perl-module

DESCRIPTION="Unload a class"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

RDEPEND="dev-lang/perl
	dev-perl/Class-Inspector"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple
		>=dev-perl/Test-Pod-1.22
		>=dev-perl/Test-Pod-Coverage-1.08 )"

SRC_TEST=do
