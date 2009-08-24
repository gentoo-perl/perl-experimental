# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=DCONWAY
MY_P="${PN}-v${PV}"
S="${WORKDIR}/${MY_P}"
inherit perl-module
DESCRIPTION="Comments that do more than just sit there"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	virtual/perl-Text-Balanced
	virtual/perl-version
"
# Data::Dumper
# Filter::Simple
# List::Util
# Test::More

RDEPEND="${DEPEND}"
SRC_TEST="do"

