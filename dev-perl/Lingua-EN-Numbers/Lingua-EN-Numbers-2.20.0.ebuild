# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=NEILB
MODULE_VERSION=2.02
inherit perl-module

DESCRIPTION="Turn '407' into 'four hundred and seven', etc."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	virtual/perl-Exporter
"
# Test::More
# bigint -> bignum
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.640.0
	test? (
		virtual/perl-Test
		virtual/perl-bignum
		>=virtual/perl-Test-Simple-0.880.0
	)
"
