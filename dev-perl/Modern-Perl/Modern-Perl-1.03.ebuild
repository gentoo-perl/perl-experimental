# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=CHROMATIC
inherit perl-module

DESCRIPTION="enable all of the features of Modern Perl with one command"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="
	virtual/perl-Module-Build
	test? ( virtual/perl-Test-Simple )
"
RDEPEND=""
SRC_TEST="do"
