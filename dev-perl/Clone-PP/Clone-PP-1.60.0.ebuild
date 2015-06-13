# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
MODULE_AUTHOR=NEILB
MODULE_VERSION=1.06
inherit perl-module

DESCRIPTION="Recursively copy Perl datatypes"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-Exporter
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-Data-Dumper
		virtual/perl-Carp
	)
"
