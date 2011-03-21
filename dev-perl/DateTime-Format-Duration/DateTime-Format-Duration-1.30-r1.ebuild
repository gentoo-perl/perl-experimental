# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RICKM
MODULE_VERSION="1.03a"
MODULE_A_EXT="tgz"
inherit perl-module

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
