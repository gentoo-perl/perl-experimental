# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=KARMAN
inherit perl-module

DESCRIPTION="test Net::LDAP code"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	virtual/perl-Test-Simple
	virtual/perl-IO
	>=dev-perl/Net-LDAP-Server-0.3
	dev-perl/perl-ldap
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
