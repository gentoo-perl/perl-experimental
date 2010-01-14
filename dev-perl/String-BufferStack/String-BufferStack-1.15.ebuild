# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ALEXMV
inherit perl-module

DESCRIPTION="Nested buffers for templating systems"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-lang/perl-5.8.0"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
