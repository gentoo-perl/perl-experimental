# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=IAN
inherit perl-module

DESCRIPTION="Make your program's output indistinguishable from someone yelling German"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
#SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-perl/Lingua-Translate-0.08"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.54 )"
