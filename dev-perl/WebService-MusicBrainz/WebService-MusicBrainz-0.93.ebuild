# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BFAIST
inherit perl-module

DESCRIPTION="Interface to MusicBrainz web services"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/XML-LibXML-1.63
	>=dev-perl/libwww-perl-2.0
	>=dev-perl/Class-Accessor-0.30
	>=dev-perl/URI-1.35
"
DEPEND="
	virtual/perl-Module-Build
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
