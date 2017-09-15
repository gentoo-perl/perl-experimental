# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=RKRIMEN
MODULE_VERSION=0.013
inherit perl-module

DESCRIPTION="Share your Carp::Clan settings with your whole Clan"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Carp-Clan"
DEPEND="$RDEPEND
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	virtual/perl-Test-Simple"

SRC_TEST="do"
