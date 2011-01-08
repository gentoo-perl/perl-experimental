# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DROLSKY
MODULE_VERSION=0.15
inherit perl-module

DESCRIPTION="an extension of Params::Validate for using Moose's types"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Moose-0.58
	>=dev-perl/Params-Validate-0.88
	dev-perl/Sub-Exporter
	dev-perl/Devel-Caller
"
DEPEND="
	${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.88
		dev-perl/Test-Fatal
	)
"

SRC_TEST=do
