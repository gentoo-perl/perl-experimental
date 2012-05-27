# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=KONOBI
MODULE_VERSION="0.01"
inherit perl-module

DESCRIPTION="Perl interface to Janrain's RPX service"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/JSON-Any
	dev-perl/libwww-perl
	>=dev-perl/Moose-0.70
	dev-perl/URI
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Test-Exception
	virtual/perl-Test-Simple
	dev-perl/mocked
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
