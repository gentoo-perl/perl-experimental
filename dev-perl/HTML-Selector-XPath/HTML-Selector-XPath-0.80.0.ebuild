# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION="CSS Selector to XPath compiler"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

perl_mi_build() {
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Base
	echo dev-perl/Test-Base
}
RDEPEND="$(perl_mi_build)"
DEPEND="$(perl_mi_build)"

SRC_TEST="do"
