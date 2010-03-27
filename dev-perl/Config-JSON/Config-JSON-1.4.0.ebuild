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

RDEPEND="virtual/perl-Scalar-List-Utils
	dev-perl/JSON
	dev-perl/Class-InsideOut
	virtual/perl-version
	virtual/perl-File-Temp"
DEPEND="${RDEPEND}
	test? ( dev-perl/Test-Deep )"

SRC_TEST="do"
S="${WORKDIR}/${PN}"
