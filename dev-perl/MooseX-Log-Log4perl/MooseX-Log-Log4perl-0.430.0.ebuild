# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=LAMMEL
MODULE_VERSION=0.43
inherit perl-module

DESCRIPTION="A Logging Role for Moose based on Log::Log4perl"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment Any::Moose 0.12)
	>=dev-perl/Any-Moose-0.12 $(comment 0.120.0)

	$(comment Log::Log4perl 1.13)
	>=dev-perl/Log-Log4perl-1.13 $(comment 1.130.0)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment IO::Scalar)
	dev-perl/IO-stringy

	$(comment Test::More)
	virtual/perl-Test-Simple

	$(comment Moose 0.65)
	>=dev-perl/Moose-0.65 $(comment 0.650.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
