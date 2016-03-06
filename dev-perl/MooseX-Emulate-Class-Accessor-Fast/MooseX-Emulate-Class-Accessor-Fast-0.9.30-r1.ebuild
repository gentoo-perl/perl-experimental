# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.00903
inherit perl-module

DESCRIPTION="Emulate Class::Accessor::Fast behavior using Moose attributes"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Moose-0.840.0
	dev-perl/namespace-clean
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		dev-perl/Test-Exception
		virtual/perl-Test-Simple
	)
"
