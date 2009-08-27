# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=TIMB
inherit perl-module

DESCRIPTION="Powerful feature-rich perl source code profiler"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	virtual/perl-Getopt-Long
"
# List::Util => Perl
# Test::More => Perl
# XSLoader   => Perl

DEPEND="${DEPEND}
	test? (
		virtual/perl-Scalar-List-Utils
		virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
