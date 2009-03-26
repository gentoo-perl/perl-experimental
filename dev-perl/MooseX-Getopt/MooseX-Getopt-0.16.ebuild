# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="A Moose role for processing command line options"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-perl/Moose-0.43
	dev-perl/Getopt-Long-Descriptive
	>=virtual/perl-Getopt-Long-2.37"
DEPEND="
	test? ( ${RDEPEND}
		>=dev-perl/Test-Exception-0.21
		>=virtual/perl-Test-Simple-0.62 )"

SRC_TEST=do
