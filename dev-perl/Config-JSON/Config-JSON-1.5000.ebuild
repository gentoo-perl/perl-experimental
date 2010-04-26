# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

MODULE_AUTHOR="RIZEN"
inherit perl-module

DESCRIPTION="A JSON based config file system."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=virtual/perl-Scalar-List-Utils-1.19
	>=dev-perl/JSON-2.16
	>=dev-perl/Moose-0.93
	>=virtual/perl-File-Temp-0.18
"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.6
		>=dev-perl/Test-Deep-0.095
	)
"

SRC_TEST="do"
#S="${WORKDIR}/${PN}"
