# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=ADAMK
MODULE_VERSION="1.01"
inherit perl-module

DESCRIPTION="Detect leaks of objects"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=virtual/perl-Scalar-List-Utils-1.19"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.42 )"
