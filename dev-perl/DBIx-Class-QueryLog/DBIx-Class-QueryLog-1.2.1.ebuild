# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=GPHAT
inherit perl-module

DESCRIPTION="Log queries for later analysis."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Class-Accessor
	>=dev-perl/DBIx-Class-0.07000
	dev-perl/Moose
	dev-perl/MooseX-AttributeHelpers
	virtual/perl-Time-HiRes
"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"

SRC_TEST=do
