# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

#MODULE_AUTHOR=BOBTFISH
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.13"
inherit perl-module

DESCRIPTION="Drop-in relacement for NEXT which uses Class::C3"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/MRO-Compat
	dev-perl/List-MoreUtils"
DEPEND="test? ( ${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	dev-perl/Test-Exception )"

SRC_TEST=do
