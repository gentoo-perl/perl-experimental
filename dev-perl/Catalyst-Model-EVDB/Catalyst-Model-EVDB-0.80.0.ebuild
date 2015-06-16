# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=DANIELTWC
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION="EVDB model class for Catalyst"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.500.0
	dev-perl/EVDB-API
	virtual/perl-Test-Simple
"
DEPEND="${RDEPEND}"
