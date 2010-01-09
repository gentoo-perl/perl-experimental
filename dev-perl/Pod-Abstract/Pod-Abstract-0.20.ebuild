# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=BLILBURNE
inherit perl-module

DESCRIPTION="Abstract document tree for Perl POD documents"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/IO-String
	virtual/perl-Scalar-List-Utils
"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		virtual/perl-File-Temp
	)
"

SRC_TEST=do
