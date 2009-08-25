# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=SZABGAB
inherit perl-module

DESCRIPTION="a port to Perl of the syntax highlight engine of the Kate texteditor."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPENDS=""

DEPENDS="
	${RDEPENDS}
	test? (
		virtual/perl-Test-Simple-0.88
		virtual/perl-Term-ANSIColor
	)
"
SRC_TEST=do
