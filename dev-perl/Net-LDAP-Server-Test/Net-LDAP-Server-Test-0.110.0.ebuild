# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=KARMAN
MODULE_VERSION=0.11
inherit perl-module

DESCRIPTION="test Net::LDAP code"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	virtual/perl-Test-Simple $(comment Test::More)
	virtual/perl-IO	$(comment IO::Socket IO::Select)
	>=dev-perl/Net-LDAP-Server-0.3 $(comment 0.300.0)
	dev-perl/perl-ldap $(comment Net::LDAP)
	dev-perl/Data-Dump
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
# NOTE: Appears to fail tests randomly. Run until it works.
# TODO: Fix this.
SRC_TEST="do"
