# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=CHORNY
#MY_P="${PN}-v${PV}"
#S="${WORKDIR}/${MY_P}"
inherit perl-module
DESCRIPTION="Comments that do more than just sit there"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	virtual/perl-Text-Balanced
	virtual/perl-version
	virtual/perl-Filter
	virtual/perl-Scalar-List-Utils
"
# Data::Dumper

DEPEND="${DEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
