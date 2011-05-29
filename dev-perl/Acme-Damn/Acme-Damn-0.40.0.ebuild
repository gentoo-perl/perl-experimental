# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=IBB
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="'Unbless' Perl objects"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-Exception
		virtual/perl-Test-Simple
	)
"

SRC_TEST=do
