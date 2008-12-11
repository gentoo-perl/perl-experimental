# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=JESSE
inherit perl-module

DESCRIPTION="Refresh %INC files when updated on disk"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~x86"
IUSE="test"

DEPEND="dev-lang/perl
	test? ( virtual/perl-Test-Simple
		virtual/perl-File-Temp )"

SRC_TEST=do
