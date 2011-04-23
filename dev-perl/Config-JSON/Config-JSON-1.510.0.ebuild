# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

MODULE_AUTHOR="RIZEN"
MODULE_VERSION="1.5100"
inherit perl-module

DESCRIPTION="A JSON based config file system."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=virtual/perl-Scalar-List-Utils-1.19
	>=dev-perl/JSON-2.16
	>=dev-perl/Any-Moose-0.13
	>=virtual/perl-File-Temp-0.18
	>=virtual/perl-Test-Simple-0.7
	>=dev-perl/Test-Deep-0.095
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"

SRC_TEST="do"
#S="${WORKDIR}/${PN}"
