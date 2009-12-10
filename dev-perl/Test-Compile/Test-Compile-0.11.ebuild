# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MARCEL
inherit perl-module

DESCRIPTION="check whether Perl module files compile correctly"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/UNIVERSAL-require
"
#	dev-perl/Devel-CheckOS"
DEPEND="
	${RDEPEND}
	>=virtual/perl-Test-Simple-0.70
"
SRC_TEST="do"
