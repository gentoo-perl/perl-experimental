# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ROKR
MODULE_VERSION="0.051"
inherit perl-module

DESCRIPTION="Recursively merge two or more hashes, simply"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Clone
	virtual/perl-Storable
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.560.0
	test? (
		dev-perl/Test-Most
		dev-perl/Test-Deep
		virtual/perl-Test-Simple
	)"

SRC_TEST=do
