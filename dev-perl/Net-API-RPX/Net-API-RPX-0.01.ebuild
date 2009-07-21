# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KONOBI
inherit perl-module

DESCRIPTION="Perl interface to Janrain's RPX service"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/JSON-Any
	dev-perl/libwww-perl
	dev-perl/Moose
	dev-perl/URI
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Exception
		virtual/perl-Test-Simple
		dev-perl/mocked
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
