# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=JMCADA
inherit perl-module

SRC_URI="mirror://cpan/authors/id/J/JM/JMCADA/weather/${P}.tar.gz"

DESCRIPTION="Object interface to the NWS Web services"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
#SRC_TEST="do"

IUSE="test"
RDEPEND="dev-perl/Class-Std
	dev-perl/Readonly
	dev-perl/SOAP-DateTime
	dev-perl/libwww-perl"
DEPEND="${RDEPEND}
	test? (
		>=dev-perl/Test-Pod-1.14
		>=dev-perl/Test-Pod-Coverage-1.04
		virtual/perl-Test-Simple
	)"
