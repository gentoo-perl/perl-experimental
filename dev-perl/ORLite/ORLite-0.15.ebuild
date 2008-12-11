# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Extremely light weight SQLite-specific ORM"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="dev-lang/perl
	>=dev-perl/Params-Util-0.33
	>=virtual/perl-File-Temp-0.17
	dev-perl/DBI
	dev-perl/DBD-SQLite"

SRC_TEST=do
