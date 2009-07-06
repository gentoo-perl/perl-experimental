# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RICKM
inherit perl-module

SRC_URI="mirror://cpan/authors/id/R/RI/RICKM/${P}.tgz"
S="${WORKDIR}/${PN}-1.03"

DESCRIPTION="Format and parse DateTime::Durations"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-perl/DateTime-0.30
	dev-perl/Params-Validate"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
