# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=ALEXMV
MODULE_VERSION=1.16
inherit perl-module

DESCRIPTION="Nested buffers for templating systems"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND=">=dev-lang/perl-5.8.0"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? ( virtual/perl-Test-Simple )"
